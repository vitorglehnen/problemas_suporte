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
    procedure InsertModulo(aNomeModulo: String);
    procedure UpdateModulo(aNomeModuloAnt, aNomeModuloAtt: String);
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
  
  FQuery.Open('SELECT nome FROM modulos ORDER BY nome');
  FDataSource.DataSet := FQuery;

  Result := FDataSource;
end;

constructor TDAOModulo.Create;
begin
  FConn:= TConexao.Create;
  FDataSource:= TDataSource.Create(nil);
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
  FDataSource.Free;
  inherited;
end;

procedure TDAOModulo.InsertModulo(aNomeModulo:String);
begin
  FQuery := FConn.CriarQuery;

  FQuery.ExecSQL('insert into modulos (nome) values (:nome)', [aNomeModulo]); 
end;

procedure TDAOModulo.UpdateModulo(aNomeModuloAnt, aNomeModuloAtt: String);
begin
  FQuery := FConn.CriarQuery;

  FQuery.SQL.Text := 'UPDATE modulos SET nome = :nomeAtt WHERE (nome = :nomeAnt)';
  FQuery.ParamByName('nomeAtt').AsString := aNomeModuloAtt;
  FQuery.ParamByName('nomeAnt').AsString := aNomeModuloAnt;

  FQuery.ExecSQL;
end;

end.
