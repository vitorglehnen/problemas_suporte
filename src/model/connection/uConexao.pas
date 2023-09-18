unit uConexao;

interface

uses
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.UI.Intf,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Def,
  FireDAC.Stan.Pool,
  FireDAC.Stan.Async,
  FireDAC.Phys,
  Data.DB,
  FireDAC.Comp.Client,
  FireDAC.Phys.MySQLDef,
  FireDAC.Phys.FB,
  FireDAC.DApt,
  FireDAC.VCLUI.Wait,
  System.IniFiles,
  Vcl.Dialogs, System.SysUtils;

type
  TConexao = class
  private
    FConn: TFDConnection;
    FQuery: TFDQuery;
    FDataSource: TDataSource;
    FExeDir: String;

    procedure ConfigConexao;
    procedure CriarConnectIniFile;
  public
    constructor Create;
    destructor Destroy; override;

    function CriarQuery: TFDQuery;
    function CriarDataSource: TDataSource;
    function GetConn: TFDConnection;
  end;

const
  NOME_ARQ_INI = 'Connect.ini';

implementation

uses
  Vcl.Forms;

{ TConexao }

procedure TConexao.ConfigConexao;
var
  ArqINIConexao: TIniFIle;
begin
  ArqINIConexao := TIniFIle.Create(FExeDir + NOME_ARQ_INI);
  try
    FConn.Params.DriverID := 'FB';
    FConn.Params.Database := ArqINIConexao.ReadString('Conexão', 'CaminhoDoBanco',
      'C:\Problemas Suporte\DBPROB.FDB');
    FConn.Params.UserName := ArqINIConexao.ReadString('Conexão', 'Username', 'SYSDBA');
    FConn.Params.Password := ArqINIConexao.ReadString('Conexão', 'Password', 'masterkey');
    FConn.Params.Values['Server'] := ArqINIConexao.ReadString('Conexão', 'Server', '127.0.0.1');
    FConn.Params.Values['Port'] := ArqINIConexao.ReadString('Conexão', 'Port', '3050');
    FConn.LoginPrompt := False;

    FConn.Connected;
  finally
    ArqINIConexao.Free;
  end;
end;

constructor TConexao.Create;
begin
  FConn := TFDConnection.Create(nil);
  FQuery := TFDQuery.Create(nil);
  FDataSource := TDataSource.Create(nil);
  FExeDir := ExtractFilePath(Application.ExeName);

  CriarConnectIniFile;
  ConfigConexao;
end;

procedure TConexao.CriarConnectIniFile;
var
  ArqINI: TIniFIle;
begin
  if not FileExists(FExeDir + NOME_ARQ_INI) then
  begin
    ArqINI := TIniFIle.Create(ExtractFilePath(ParamStr(0)) + NOME_ARQ_INI);
    try
      ArqINI.WriteString('Conexão', 'CaminhoDoBanco',
        'C:\Problemas Suporte\DBPROB.FDB');
      ArqINI.WriteString('Conexão', 'DriverID', 'FB');
      ArqINI.WriteString('Conexão', 'Username', 'SYSDBA');
      ArqINI.WriteString('Conexão', 'Password', 'masterkey');
      ArqINI.WriteString('Conexão', 'Server', 'localhost');
      ArqINI.WriteString('Conexão', 'Port', '44680');

      ArqINI.WriteString('Imagens', 'CaminhoDaPasta', 'C:\Problemas Suporte\Imagens\');
      ArqINI.WriteString('Login', 'Usuario', '');
    finally
      ArqINI.Free;
    end;
  end;
end;

function TConexao.CriarDataSource: TDataSource;
begin
  Result := FDataSource;
end;

function TConexao.CriarQuery: TFDQuery;
begin
  FQuery.Connection := FConn;

  Result := FQuery;
end;

destructor TConexao.Destroy;
begin
  FConn.Free;
  FQuery.Free;
  FDataSource.Free;
  inherited;
end;

function TConexao.GetConn: TFDConnection;
begin
  Result := FConn;
end;

end.
