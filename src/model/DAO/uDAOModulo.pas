unit uDAOModulo;

interface

uses uConexao, uModulo, FireDAC.Comp.Client, Vcl.Dialogs, System.Generics.Collections,
  Vcl.DBCtrls, DBClient, Data.DB;

type
  TDAOModulo = Class
  private
    FConn: TConexao;
    FQuery: TFDQuery;
    FDataSource: TDataSource;
  public
    function BuscaTabelaModulos : TDataSource;
    procedure DeleteModulo(aModulo : TModulo);
    constructor Create;
    destructor Destroy; override;
  End;

implementation

{ TDAOModulo }

function TDAOModulo.BuscaTabelaModulos : TDataSource;
begin
  FQuery:= FConn.CriarQuery;
  FDataSource:= FConn.CriarDataSource;
  
  FQuery.Open('SELECT nome FROM modulos ORDER BY nome');
  FDataSource.DataSet := FQuery;

  Result := FDataSource;
end;

constructor TDAOModulo.Create;
begin
  FConn:= TConexao.Create;
end;

procedure TDAOModulo.DeleteModulo(aModulo : TModulo);
begin
  FQuery := FConn.CriarQuery;

  FQuery.SQL.Text := 'DELETE FROM modulos where nome = :nome';
  FQuery.ParamByName('nome').AsString := aModulo.Nome;

  FQuery.ExecSQL;
end;

destructor TDAOModulo.Destroy;
begin
  FConn.Free;
  inherited;
end;

end.
