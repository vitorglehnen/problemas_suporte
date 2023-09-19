unit uDAOGridProblema;

interface

uses
  FireDAC.Comp.Client, uConexao, Data.DB, uProblema;

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
  { M�todo construtor da classe }

  FConn := TConexao.Create;
end;

destructor TDAOGridProblema.Destroy;
begin
  { M�todo destrutor da classe }

  FConn.Free;

  inherited;
end;

function TDAOGridProblema.BuscaTabelaProblemas: TDataSource;
begin
  FQuery := FConn.CriarQuery;
  FDataSource := FConn.CriarDataSource;

  FQuery.SQL.Text := 'SELECT * FROM PROBLEMAS ORDER BY TITULO';
  FQuery.Open;

  FDataSource.DataSet := FQuery;

  Result := FDataSource;
end;

function TDAOGridProblema.BuscaTabelaProblemasPorFiltro(aProblema: TProblema; aColuna: String; aFiltro: String): TDataSource;
begin
  FQuery := FConn.CriarQuery;
  FDataSource := FConn.CriarDataSource;

  FQuery.SQL.Clear;
  FQuery.SQL.Add('SELECT * FROM problemas WHERE');

  if aFiltro = 'M�dulo' then
  begin
    FQuery.SQL.Add('cod_mod = (SELECT cod_mod FROM modulos WHERE nome = :modulo) AND');
    FQuery.ParamByName('modulo').AsString := aProblema.Modulo;
  end;

  if aColuna = 'C�digo' then
  begin
    FQuery.SQL.Add('CAST(cod_prob AS VARCHAR(10)) like :cod_prob || ''%''');
    FQuery.ParamByName('cod_prob').AsInteger := aProblema.Codigo;
  end
  else if aColuna = 'T�tulo' then
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
  else if aColuna = 'Solu��o' then
  begin
    FQuery.SQL.Add('UPPER(solucao) like ''%'' || UPPER(:solucao) || ''%''');
    FQuery.ParamByName('solucao').AsString := aProblema.Solucao;
  end;

  FQuery.Open;
  FQuery.FetchAll;

  FDataSource.DataSet := FQuery;
  FConn.GetConn.Commit;

  Result := FDataSource;
end;

function TDAOGridProblema.BuscaTabelaProblemasPorModulo(aNomeModulo: String): TDataSource;
begin
  FQuery := FConn.CriarQuery;
  FDataSource := FConn.CriarDataSource;

  FQuery.SQL.Text := 'SELECT * FROM problemas ' +
  'JOIN modulos ON problemas.cod_mod = modulos.cod_mod ' +
  'WHERE modulos.nome = :NomeModulo';
  FQuery.ParamByName('NomeModulo').AsString := aNomeModulo;
  FQuery.Open;

  FDataSource.DataSet := FQuery;
  FConn.GetConn.Commit;

  Result := FDataSource;
end;

end.
