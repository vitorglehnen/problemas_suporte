unit DAOModulo;

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
    procedure InsertModulo(aNomeModulo:String);
    constructor Create;
    destructor Destroy; override;
  End;

implementation

{ TDAOModulo }

function TDAOModulo.BuscaTabelaModulos : TDataSource;
begin
  FQuery:= FConn.CriarQuery;
  
  FQuery.Open('SELECT nome FROM modulos ORDER BY nome');
  FDataSource.DataSet := FQuery;

  Result := FDataSource;
end;

constructor TDAOModulo.Create;
begin
  FConn:= TConexao.Create;
  FDataSource:= TDataSource.Create(nil);
end;

destructor TDAOModulo.Destroy;
begin
  FConn.Free;
  FDataSource.Free;
  inherited;
end;

procedure TDAOModulo.InsertModulo(aNomeModulo:String);
begin
  FQuery := FConn.CriarQuery;

  FQuery.ExecSQL('insert into modulos (nome) values (:nome)', [aNomeModulo]); 
end;

end.
