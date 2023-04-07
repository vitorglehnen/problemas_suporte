unit uConexao;

interface

uses
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, Data.DB, FireDAC.Comp.Client, FireDAC.Phys.MySQLDef,
  FireDAC.Phys.FB, System.SysUtils, FireDAC.DApt, FireDAC.VCLUI.Wait, System.IniFiles, Vcl.Dialogs;

type
  TConexao = class
    private
      FConn: TFDConnection;

      procedure ConfigConexao;

    public
      constructor Create;
      destructor Destroy; override;

      function CriarQuery: TFDQuery;
      function GetConn: TFDConnection;
      procedure CriaConnectINI;
  end;

const
  ARQ_INI = 'Connect.ini';

implementation

{ TConexao }

procedure TConexao.ConfigConexao;
begin
  FConn.Params.DriverID:= 'FB';
  FConn.Params.Database:= '';
  FConn.Params.UserName:= 'SYSDBA';
  FConn.Params.Password:= 'masterkey';
  FConn.LoginPrompt := False;
end;

constructor TConexao.Create;
begin
  FConn:= TFDConnection.Create(nil);

  CriaConnectINI;
  //Self.ConfigConexao;
end;

procedure TConexao.CriaConnectINI;
var
  ArqINI: TIniFile;
begin
  if not FileExists
    ('C:\Problemas Suporte\')
  then
  begin
    ArqINI := TIniFile.Create(ExtractFilePath(ParamStr(0)) + ARQ_INI);
    try
      ArqINI.WriteString('Conexão', 'CaminhoDoBanco', 'C:\Problemas Suporte\DBPROB.FDB');
      ArqINI.WriteString('Conexão', 'DriverID', 'FB');
    finally
      ArqINI.Free;
    end;
  end;
end;

function TConexao.CriarQuery: TFDQuery;
var
  aQuery: TFDQuery;
begin
  aQuery := TFDQuery.Create(nil);
  aQuery.Connection:= FConn;

  Result:= aQuery;
end;

destructor TConexao.Destroy;
begin
  FConn.Free;
  inherited;
end;

function TConexao.GetConn: TFDConnection;
begin
  Result:= FConn;
end;

end.
