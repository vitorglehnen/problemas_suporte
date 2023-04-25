unit uDAOProblema;

interface

uses
  FireDAC.Comp.Client, uConexao, Data.DB, uProblema;

type
  TDAOProblema = class
  private
    FConn: TConexao;
    FQuery: TFDQuery;
    FDataSource: TDataSource;
  public
    function CarregaDadosProblema(aTituloProblema: String): TDataSource;
    procedure InsertProblema(aProblema: TProblema);
    procedure UpdateProblema(aProblema: TProblema);
    procedure DeleteProblema(aProblema: TProblema);
    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TDAOProblema }

function TDAOProblema.CarregaDadosProblema(
  aTituloProblema: String): TDataSource;
begin
  FQuery := FConn.CriarQuery;
  FDataSource := FConn.CriarDataSource;

  FQuery.SQL.Text := 'SELECT p.cod_prob, m.nome as modulo, p.titulo, p.chamado, p.detalhes, p.solucao, p.datacr, p.horacr FROM problemas p JOIN modulos m on p.cod_mod = m.cod_mod WHERE p.titulo = :TituloProblema';
  FQuery.ParamByName('TituloProblema').AsString := aTituloProblema;
  FQuery.Open;

  FDataSource.DataSet := FQuery;

  Result := FDataSource;
end;

constructor TDAOProblema.Create;
begin
  FConn := TConexao.Create;
end;

procedure TDAOProblema.DeleteProblema(aProblema: TProblema);
begin
  FQuery := FConn.CriarQuery;

  FQuery.SQL.Text := 'delete from problemas where cod_prob = :cod_prob';

  FQuery.ParamByName('cod_prob').AsInteger := aProblema.Codigo;
  FQuery.ExecSQL;
end;

destructor TDAOProblema.Destroy;
begin
  FConn.Free;
  inherited;
end;

procedure TDAOProblema.InsertProblema(aProblema: TProblema);
begin
  FQuery := FConn.CriarQuery;

  FQuery.SQL.Text :=
    'INSERT INTO problemas ' +
    '(cod_mod, titulo, chamado, detalhes, solucao)' +
    'VALUES ((SELECT cod_mod FROM modulos WHERE nome = :nome_mod), :titulo, :chamado, :detalhes, :solucao)';

  FQuery.ParamByName('nome_mod').AsString := aProblema.Modulo;
  FQuery.ParamByName('titulo').AsString := aProblema.Titulo;
  FQuery.ParamByName('chamado').AsString := aProblema.Chamado;
  FQuery.ParamByName('detalhes').AsString := aProblema.Detalhes;
  FQuery.ParamByName('solucao').AsString := aProblema.Solucao;

  FQuery.ExecSQL;
end;

procedure TDAOProblema.UpdateProblema(aProblema: TProblema);
begin
  FQuery := FConn.CriarQuery;

  FQuery.SQL.Text := 'UPDATE problemas SET titulo = :titulo, cod_mod = (SELECT cod_mod FROM modulos WHERE nome = :modulo), chamado = :chamado, ' +
  'detalhes = :detalhes, solucao = :solucao WHERE (cod_prob = :cod_prob)';

  FQuery.ParamByName('titulo').AsString := aProblema.Titulo;
  FQuery.ParamByName('modulo').AsString := aProblema.Modulo;
  FQuery.ParamByName('chamado').AsString := aProblema.Chamado;
  FQuery.ParamByName('detalhes').AsString := aProblema.Detalhes;
  FQuery.ParamByName('solucao').AsString := aProblema.Solucao;
  FQuery.ParamByName('cod_prob').AsInteger := aProblema.Codigo;

  FQuery.ExecSQL;
end;

end.
