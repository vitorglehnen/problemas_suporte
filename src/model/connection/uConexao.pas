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
  System.SysUtils,
  FireDAC.DApt,
  FireDAC.VCLUI.Wait,
  System.IniFiles,
  Vcl.Dialogs;

type
  TConexao = class
  private
    FConn: TFDConnection;
    FQuery: TFDQuery;
    FDataSource: TDataSource;

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

{ TConexao }

procedure TConexao.ConfigConexao;
var
  ArqINI: TIniFIle;
begin
  ArqINI := TIniFIle.Create('C:\Problemas Suporte\Connect.ini');
  try
    FConn.Params.DriverID := 'FB';
    FConn.Params.Database := ArqINI.ReadString('Conex�o', 'CaminhoDoBanco',
      'C:\Problemas Suporte\DBPROB.FDB');
    FConn.Params.UserName := ArqINI.ReadString('Conex�o', 'Username', 'SYSDBA');
    FConn.Params.Password := ArqINI.ReadString('Conex�o', 'Password', 'masterkey');
    FConn.LoginPrompt := False;

    FConn.Connected;
  finally
    ArqINI.Free;
  end;
end;

constructor TConexao.Create;
begin
  FConn := TFDConnection.Create(nil);
  FQuery := TFDQuery.Create(nil);
  FDataSource := TDataSource.Create(nil);

  CriarConnectIniFile;
  ConfigConexao;
end;

procedure TConexao.CriarConnectIniFile;
var
  ArqINI: TIniFIle;
begin
  if not FileExists('C:\Problemas Suporte\Connect.ini') then
  begin
    ArqINI := TIniFIle.Create(ExtractFilePath(ParamStr(0)) + NOME_ARQ_INI);
    try
      ArqINI.WriteString('Conex�o', 'CaminhoDoBanco',
        'C:\Problemas Suporte\DBPROB.FDB');
      ArqINI.WriteString('Conex�o', 'DriverID', 'FB');
      ArqINI.WriteString('Conex�o', 'Username', 'SYSDBA');
      ArqINI.WriteString('Conex�o', 'Password', 'masterkey');
      ArqINI.WriteString('Imagens', 'CaminhoDaPasta', 'C:\Problemas Suporte\Imagens\');
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
