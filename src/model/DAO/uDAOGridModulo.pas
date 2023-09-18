unit uDAOGridModulo;

interface

uses
  uConexao,
  uModulo,
  FireDAC.Comp.Client,
  Vcl.Dialogs,
  System.Generics.Collections,
  Vcl.DBCtrls,
  DBClient,
  Data.DB;

type
  TDAOGridModulo = Class
  private
    FConn: TConexao;
    FQuery: TFDQuery;
    FDataSource: TDataSource;
  public
    function BuscaTabelaModulos(aNomeModulo: String): TDataSource;
    constructor Create;
    destructor Destroy; override;
  End;

implementation

{ TDAOModulo }

function TDAOGridModulo.BuscaTabelaModulos(aNomeModulo: String): TDataSource;
begin
  FQuery := FConn.CriarQuery;
  FDataSource := FConn.CriarDataSource;

  FQuery.SQL.Text := 'SELECT nome FROM modulos WHERE nome like UPPER(:nome) || ''%'' ORDER BY nome';
  FQuery.ParamByName('nome').AsString := aNomeModulo;
  FQuery.Open();

  FDataSource.DataSet := FQuery;
  FConn.GetConn.Commit;

  Result := FDataSource;
end;

constructor TDAOGridModulo.Create;
begin
  FConn := TConexao.Create;
end;

destructor TDAOGridModulo.Destroy;
begin
  FConn.Free;

  inherited;
end;

end.

