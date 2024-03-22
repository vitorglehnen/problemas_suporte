unit uDAOUsuario;

interface

uses
  FireDAC.Comp.Client,
  uConexao,
  uProblema,
  Data.DB,
  Vcl.Dialogs,
  uInterfaceUsuario,
  IdBaseComponent,
  IdComponent,
  IdIPWatch;

type
  TDAOUsuario = class
  private
    FConn: TConexao;
    FQuery: TFDQuery;
    FDataSource: TDataSource;
  public
    constructor Create;
    destructor Destroy; override;

    function RetornaUsuario(aUsuario: String): TDataSet;
    function RetornaCodUsuario(aUsuario: String): Integer;

    procedure InsertUsuario(aUsuario: String);
    procedure AtualizaUsuario(aUsuario: IUsuario);
    procedure AtualizaIpUsuario(aUsuario: String);
  end;

implementation

{ TDAOProblema }

constructor TDAOUsuario.Create;
begin
  { Método construtor da classe }

  FConn := TConexao.Create;
end;

destructor TDAOUsuario.Destroy;
begin
  { Método destrutor da classe }

  FConn.Free;

  inherited;
end;

procedure TDAOUsuario.AtualizaIpUsuario(aUsuario: String);
begin
  var FObjectIP : TIdIPWatch;

  FObjectIP := TIdIPWatch.Create(nil);

  FQuery := FConn.CriarQuery;

  FQuery.SQL.Text := 'UPDATE usuarios SET ip = :ip WHERE nome = :nome';
  FQuery.ParamByName('ip').AsString := FObjectIP.LocalIP;
  FQuery.ParamByName('nome').AsString := aUsuario;

  FQuery.ExecSQL;
  FConn.GetConn.Commit;
end;

procedure TDAOUsuario.AtualizaUsuario(aUsuario: IUsuario);
begin
  FQuery := FConn.CriarQuery;

  FQuery.SQL.Text := 'UPDATE usuarios SET selecaogeral = :selecaogeral, cor = :cor WHERE nome = :nome';
  FQuery.ParamByName('nome').AsString := aUsuario.Nome;
  FQuery.ParamByName('selecaogeral').AsInteger := aUsuario.ConsultaGeral;
  FQuery.ParamByName('cor').AsString := aUsuario.Cor;

  FQuery.ExecSQL;
  FConn.GetConn.Commit;
end;

procedure TDAOUsuario.InsertUsuario(aUsuario: String);
begin
  FQuery := FConn.CriarQuery;

  FQuery.SQL.Text := 'INSERT INTO usuarios (cod_usu, nome, selecaogeral, cor) VALUES (GEN_ID(gen_usuarios_id, 1), :nome, :selecaogeral, :cor)';
  FQuery.ParamByName('nome').AsString := aUsuario;
  FQuery.ParamByName('selecaogeral').AsInteger := 1;
  FQuery.ParamByName('cor').AsString := '$00FEF1E7';

  FQuery.ExecSQL;
  FConn.GetConn.Commit;
end;

function TDAOUsuario.RetornaCodUsuario(aUsuario: String): Integer;
begin
  FQuery := FConn.CriarQuery;
  FDataSource := FConn.CriarDataSource;

  FQuery.SQL.Text := 'SELECT cod_usu FROM usuarios WHERE nome = :nome';
  FQuery.ParamByName('nome').AsString := aUsuario;
  FQuery.Open;

  FDataSource.DataSet := FQuery;
  FConn.GetConn.Commit;

  Result := FDataSource.DataSet.FieldByName('cod_usu').AsInteger;
end;

function TDAOUsuario.RetornaUsuario(aUsuario: String): TDataSet;
begin
  FQuery := FConn.CriarQuery;
  FDataSource := FConn.CriarDataSource;

  FQuery.SQL.Text := 'SELECT * FROM usuarios u where u.nome = :nome';
  FQuery.ParamByName('nome').AsString := aUsuario;
  FQuery.Open;

  FDataSource.DataSet := FQuery;
  FConn.GetConn.Commit;

  Result := FDataSource.DataSet;
end;

end.
