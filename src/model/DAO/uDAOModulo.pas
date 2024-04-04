unit uDAOModulo;

interface

uses
    uConexao,
    uModulo,
    FireDAC.Comp.Client,
    Vcl.Dialogs,
    System.Generics.Collections,
    Vcl.DBCtrls,
    DBClient,
    Data.DB, uUsuario;

type
  TDAOModulo = Class
  private
    FConn: TConexao;
    FQuery: TFDQuery;
    FDataSource: TDataSource;
  public
    function BuscaModulos: TDataSource;
    function BuscaNomeModulo(aCodigoModulo: Integer): TDataSource;
    function BuscaCodigoModulo(aNomeModulo: String): TDataSource;
    function BuscaQtdeTotalModulos: TDataSource;
    function BuscaQtdeTotalModulosPorUsuario(aUsuario: TUsuario): TDataSource;

    procedure DeleteModulo(aModulo: TModulo);
    constructor Create;
    destructor Destroy; override;
  End;

implementation

{ TDAOModulo }

constructor TDAOModulo.Create;
begin
  { Método construtor da classe }

  FConn := TConexao.Create;
end;

destructor TDAOModulo.Destroy;
begin
  { Método destrutor da classe }

  FConn.Free;

  inherited;
end;

function TDAOModulo.BuscaCodigoModulo(aNomeModulo: String): TDataSource;
begin
  FQuery := FConn.CriarQuery;
  FDataSource := FConn.CriarDataSource;

  FQuery.SQL.Clear;
  FQuery.SQL.Add('SELECT cod_mod FROM modulos WHERE nome = :nome');
  FQuery.ParamByName('nome').AsString := aNomeModulo;
  FQuery.Open;

  FDataSource.DataSet := FQuery;
  FConn.GetConn.Commit;

  Result := FDataSource;
end;

function TDAOModulo.BuscaModulos: TDataSource;
begin
  FQuery := FConn.CriarQuery;
  FDataSource := FConn.CriarDataSource;

  FQuery.Open('SELECT nome FROM modulos ORDER BY nome');

  FDataSource.DataSet := FQuery;
  FConn.GetConn.Commit;

  Result := FDataSource;
end;

function TDAOModulo.BuscaNomeModulo(aCodigoModulo: Integer): TDataSource;
begin
  FQuery := FConn.CriarQuery;
  FDataSource := FConn.CriarDataSource;

  FQuery.SQL.Text := 'SELECT nome FROM modulos WHERE cod_mod = :cod_mod';
  FQuery.ParamByName('cod_mod').AsInteger := aCodigoModulo;
  FQuery.Open;

  FDataSource.DataSet := FQuery;
  FConn.GetConn.Commit;

  Result := FDataSource;
end;

function TDAOModulo.BuscaQtdeTotalModulos: TDataSource;
begin
  FQuery := FConn.CriarQuery;
  FDataSource := FConn.CriarDataSource;

  FQuery.SQL.Text := 'SELECT count(*) as modulos ' +
                      'FROM modulos m ';
  FQuery.Open;

  FDataSource.DataSet := FQuery;

  Result := FDataSource;
end;

function TDAOModulo.BuscaQtdeTotalModulosPorUsuario(aUsuario: TUsuario): TDataSource;
begin
  FQuery := FConn.CriarQuery;
  FDataSource := FConn.CriarDataSource;

  FQuery.SQL.Text := 'SELECT count(*) as qtde_modulos ' +
                      'FROM modulos m ' +
                      'WHERE m.cod_usu = :cod_usu';
  FQuery.ParamByName('cod_usu').AsInteger := aUsuario.GetCodigo;
  FQuery.Open;

  FDataSource.DataSet := FQuery;

  Result := FDataSource;
end;


procedure TDAOModulo.DeleteModulo(aModulo: TModulo);
begin
  FQuery := FConn.CriarQuery;

  FQuery.SQL.Text := 'DELETE FROM modulos where nome = :nome';
  FQuery.ParamByName('nome').AsString := aModulo.Nome;

  FQuery.ExecSQL;
  FConn.GetConn.Commit;
end;

end.
