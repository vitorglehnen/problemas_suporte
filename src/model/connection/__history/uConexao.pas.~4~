unit uConexao;

interface

uses
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, Data.DB, FireDAC.Comp.Client, FireDAC.Phys.MySQLDef,
  FireDAC.Phys.FB, System.SysUtils, FireDAC.DApt, FireDAC.VCLUI.Wait;

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
  end;

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

  Self.ConfigConexao;
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
