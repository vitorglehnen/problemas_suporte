unit uDAOGridProblema;

interface

uses
  FireDAC.Comp.Client,
  uConexao,
  Data.DB,
  uProblema;

type
  TDAOGridProblema = class
  private
    FConn: TConexao;
    FQuery: TFDQuery;
    FDataSource: TDataSource;
  public
    function BuscaTabelaProblemasPorModulo(aNomeModulo: String): TDataSource;
    function BuscaTabelaProblemas : TDataSource;
    function BuscaTabelaProblemasPorFiltro(aProblema: TProblema; aColuna: String; aFiltro: String): TDataSource;
    constructor Create;
    destructor Destroy; override;
  end;

implementation

uses
  System.SysUtils;

{ TDAOProblemas }

constructor TDAOGridProblema.Create;
begin
  { Método construtor da classe }

  FConn := TConexao.Create;
end;

destructor TDAOGridProblema.Destroy;
begin
  { Método destrutor da classe }

  FConn.Free;

  inherited;
end;

function TDAOGridProblema.BuscaTabelaProblemas: TDataSource;
begin
  FQuery := FConn.CriarQuery;
  FDataSource := FConn.CriarDataSource;

  FQuery.SQL.Text := 'SELECT p.*, u.nome as nome_usuario ' +
                      'FROM PROBLEMAS p ' +
                      'LEFT JOIN USUARIOS u ON u.cod_usu = p.cod_usu ' +
                      'ORDER BY TITULO';
  FQuery.Open;

  FDataSource.DataSet := FQuery;

  Result := FDataSource;
end;

function TDAOGridProblema.BuscaTabelaProblemasPorFiltro(aProblema: TProblema; aColuna: String; aFiltro: String): TDataSource;
begin
  FQuery := FConn.CriarQuery;
  FDataSource := FConn.CriarDataSource;

  FQuery.SQL.Clear;
  FQuery.SQL.Add('SELECT p.*, u.nome as nome_usuario ' +
                  'FROM problemas p ' +
                  'LEFT JOIN USUARIOS u ON u.cod_usu = p.cod_usu ' +
                  'WHERE ');

  if aFiltro = 'Módulo' then
  begin
    FQuery.SQL.Add('cod_mod = (SELECT cod_mod FROM modulos WHERE nome = :modulo) AND');
    FQuery.ParamByName('modulo').AsString := aProblema.Modulo;
  end;

  if aColuna = 'Código' then
  begin
    FQuery.SQL.Add('CAST(cod_prob AS VARCHAR(10)) like :cod_prob || ''%''');
    FQuery.ParamByName('cod_prob').AsInteger := aProblema.Codigo;
  end
  else if aColuna = 'Título' then
  begin
    FQuery.SQL.Add('UPPER(titulo) like ''%'' || UPPER(:titulo) || ''%''');
    FQuery.ParamByName('titulo').AsString := aProblema.Titulo;
  end
  else if aColuna = 'Chamado' then
  begin
    FQuery.SQL.Add('chamado like ''%'' || :chamado || ''%''');
    FQuery.ParamByName('chamado').AsString := aProblema.Chamado;
  end
  else if aColuna = 'Detalhes' then
  begin
    FQuery.SQL.Add('UPPER(detalhes) like ''%'' || UPPER(:detalhes) || ''%''');
    FQuery.ParamByName('detalhes').AsString := aProblema.Detalhes;
  end
  else if aColuna = 'Solução' then
  begin
    FQuery.SQL.Add('UPPER(solucao) like ''%'' || UPPER(:solucao) || ''%''');
    FQuery.ParamByName('solucao').AsString := aProblema.Solucao;
  end;

  FDataSource.DataSet := FQuery;
  FConn.GetConn.Commit;

  Result := FDataSource;
end;

function TDAOGridProblema.BuscaTabelaProblemasPorModulo(aNomeModulo: String): TDataSource;
begin
  FQuery := FConn.CriarQuery;
  FDataSource := FConn.CriarDataSource;

  FQuery.SQL.Text := 'SELECT p.*, u.nome as nome_usuario ' +
                      'FROM problemas p ' +
                      'JOIN modulos ON p.cod_mod = modulos.cod_mod ' +
                      'LEFT JOIN usuarios u ON p.cod_usu = u.cod_usu ' +
                      'WHERE modulos.nome = :NomeModulo';
  FQuery.ParamByName('NomeModulo').AsString := aNomeModulo;
  FQuery.Open;

  FDataSource.DataSet := FQuery;
  FConn.GetConn.Commit;

  Result := FDataSource;
end;

end.
