unit uDAOUsuario;

interface

uses
  FireDAC.Comp.Client,
  uConexao,
  uProblema,
  Data.DB,
  Vcl.Dialogs;

type
  TDAOUsuario = class
  private
    FConn: TConexao;
    FQuery: TFDQuery;
    FDataSource: TDataSource;
  public
    constructor Create;
    destructor Destroy; override;

    function RetornaUsuario(aUsuario: String): TDataSource;
    function RetornaCodUsuario(aUsuario: String): Integer;
  end;

implementation

{ TDAOProblema }

constructor TDAOUsuario.Create;
begin
  FConn := TConexao.Create;
end;

destructor TDAOUsuario.Destroy;
begin
  FConn.Free;
  inherited;
end;

function TDAOUsuario.RetornaCodUsuario(aUsuario: String): Integer;
begin
  FQuery := FConn.CriarQuery;
  FDataSource := FConn.CriarDataSource;

  FQuery.SQL.Text := 'SELECT cod_usu FROM usuarios WHERE nome = :nome';
  FQuery.ParamByName('nome').AsString := aUsuario;
  FQuery.Open;

  FDataSource.DataSet := FQuery;

  Result := FDataSource.DataSet.FieldByName('cod_usu').AsInteger;
end;

function TDAOUsuario.RetornaUsuario(aUsuario: String): TDataSource;
begin
  FQuery := FConn.CriarQuery;
  FDataSource := FConn.CriarDataSource;

  FQuery.SQL.Text := 'SELECT * FROM usuarios u where u.nome = :nome';
  FQuery.ParamByName('nome').AsString := aUsuario;
  FQuery.Open;

  FDataSource.DataSet := FQuery;

  Result := FDataSource;
end;

end.
