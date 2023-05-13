unit uDAOGridModulo;

interface

uses uConexao, uModulo, FireDAC.Comp.Client, Vcl.Dialogs, System.Generics.Collections,
  Vcl.DBCtrls, DBClient, Data.DB;

type
  TDAOGridModulo = Class
  private
    FConn: TConexao;
    FQuery: TFDQuery;
    FDataSource: TDataSource;
  public
    function BuscaModulos : TDataSource;
    constructor Create;
    destructor Destroy; override;
  End;

implementation

{ TDAOModulo }

function TDAOGridModulo.BuscaModulos : TDataSource;
begin
  FQuery:= FConn.CriarQuery;
  FDataSource:= FConn.CriarDataSource;

  FQuery.Open('SELECT nome FROM modulos ORDER BY nome');
  FDataSource.DataSet := FQuery;

  Result := FDataSource;
end;

constructor TDAOGridModulo.Create;
begin
  FConn:= TConexao.Create;
end;

destructor TDAOGridModulo.Destroy;
begin
  FConn.Free;
  inherited;
end;

end.
