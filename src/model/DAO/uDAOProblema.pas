unit uDAOProblema;

interface

uses
  FireDAC.Comp.Client, uConexao, Data.DB, uProblema, Vcl.Dialogs;

type
  TDAOProblema = class
  private
    FConn: TConexao;
    FQuery: TFDQuery;
    FDataSource: TDataSource;
  public
    function CarregaDadosProblema(aTituloProblema: String): TDataSource;
    function BuscaQuantidadeProblemas: TDataSource;
    function BuscaProximoCodigoProblema: Integer;
    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TDAOProblema }

function TDAOProblema.BuscaProximoCodigoProblema: Integer;
begin
  FQuery:= FConn.CriarQuery;

  FQuery.SQL.Clear;
  FQuery.SQL.Add('SELECT GEN_ID(GEN_PROBLEMAS_ID, 0) FROM RDB$DATABASE');
  FQuery.Open;

  Result := ;
end;

function TDAOProblema.BuscaQuantidadeProblemas: TDataSource;
begin
  FQuery:= FConn.CriarQuery;
  FDataSource:= FConn.CriarDataSource;

  FQuery.SQL.Text := 'SELECT COUNT(*) FROM problemas';
  FQuery.Open;

  FDataSource.DataSet := FQuery;

  Result := FDataSource;
end;

function TDAOProblema.CarregaDadosProblema(
  aTituloProblema: String): TDataSource;
begin
  FQuery := FConn.CriarQuery;
  FDataSource := FConn.CriarDataSource;

  FQuery.SQL.Text := 'SELECT p.cod_prob, p.cod_mod, p.titulo, p.chamado, p.detalhes, p.solucao, p.datacr, p.horacr FROM problemas p WHERE p.titulo = :TituloProblema';
  FQuery.ParamByName('TituloProblema').AsString := aTituloProblema;
  FQuery.Open;

  FDataSource.DataSet := FQuery;

  Result := FDataSource;
end;

constructor TDAOProblema.Create;
begin
  FConn := TConexao.Create;
end;

destructor TDAOProblema.Destroy;
begin
  FConn.Free;
  inherited;
end;

end.
