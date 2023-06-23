unit uDAOUsuario;

interface

uses
  FireDAC.Comp.Client,
  uConexao,
  uProblema,
  uUsuario,
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

    function RetornaUsuario(aUsuario: TUsuario): TDataSource;
    function RetornaCodUsuario(aUsuario: TUsuario): TDataSource;
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

function TDAOUsuario.RetornaCodUsuario(aUsuario: TUsuario): TDataSource;
begin
  FQuery := FConn.CriarQuery;
  FDataSource := FConn.CriarDataSource;

  FQuery.SQL.Text := 'SELECT cod_usu FROM usuarios WHERE nome = :nome';
  FQuery.ParamByName('nome').AsString := aUsuario.Nome;
  FQuery.Open;

  FDataSource.DataSet := FQuery;

  Result := FDataSource;
end;

function TDAOUsuario.RetornaUsuario(aUsuario: TUsuario): TDataSource;
begin
  FQuery := FConn.CriarQuery;
  FDataSource := FConn.CriarDataSource;

  FQuery.SQL.Text := 'SELECT COUNT(*) FROM usuarios u where u.nome = :nome and u.senha = :senha';
  FQuery.ParamByName('nome').AsString := aUsuario.Nome;
  FQuery.ParamByName('senha').AsString := aUsuario.Senha;
  FQuery.Open;

  FDataSource.DataSet := FQuery;

  Result := FDataSource;
end;

end.
