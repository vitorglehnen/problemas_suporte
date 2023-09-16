unit uUsuario;

interface

uses
  System.Classes,
  Vcl.Dialogs,
  System.IniFiles,
  uDAOUsuario,
  FireDAC.Comp.Client,
  Data.DB,
  uInterfaceUsuario;

type
  TUsuario = class(TInterfacedObject, IUsuario)
  private
    FCodigo: Integer;
    FNome: String;
    FConsultaGeral: Integer;
    FCor: String;

    FDAOUsuario: TDAOUsuario;
    FIniConexao: TIniFile;

    procedure CriaUsuario;
  public
    function GetCodigo: Integer;
    function GetNome: String;
    function GetConsultaGeral: Integer;
    function GetCor: String;

    procedure SetCodigo(const Value: Integer);
    procedure SetNome(const Value: String);
    procedure SetConsultaGeral(const Value: Integer);
    procedure SetCor(const Value: String);

    property Codigo: Integer read GetCodigo write SetCodigo;
    property Nome: String read GetNome write SetNome;
    property ConsultaGeral: Integer read GetConsultaGeral write SetConsultaGeral;
    property Cor: String read GetCor write SetCor;

    constructor Create;
    destructor Destroy; override;
  end;

implementation

uses
  System.SysUtils;

{ TUsuario }
constructor TUsuario.Create;
begin
  var aUsuario : TDataSet;

  FDAOUsuario := TDAOUsuario.Create;
  FIniConexao := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'Connect.ini');

  FNome := FIniConexao.ReadString('Login', 'Usuario', '');
  CriaUsuario;

  aUsuario := FDAOUsuario.RetornaUsuario(FNome);

  FCodigo := aUsuario.FieldByName('cod_usu').AsInteger;
  FConsultaGeral := aUsuario.FieldByName('selecaogeral').AsInteger;
  FCor := aUsuario.FieldByName('cor').AsString;
end;

procedure TUsuario.CriaUsuario;
begin
  if FDAOUsuario.RetornaUsuario(Self.Nome).IsEmpty then
    FDAOUsuario.InsertUsuario(Self.Nome);
end;

destructor TUsuario.Destroy;
begin
  FIniConexao.Free;
  FDAOUsuario.Free;

  inherited;
end;

function TUsuario.GetCodigo: Integer;
begin
  Result := FCodigo;
end;

function TUsuario.GetConsultaGeral: Integer;
begin
  Result := FConsultaGeral;
end;

function TUsuario.GetCor: String;
begin
  Result := FCor;
end;

function TUsuario.GetNome: String;
begin
  Result := FNome;
end;

procedure TUsuario.SetCodigo(const Value: Integer);
begin
  FCodigo := Value;
end;

procedure TUsuario.SetConsultaGeral(const Value: Integer);
begin
  FConsultaGeral := Value;
end;

procedure TUsuario.SetCor(const Value: String);
begin
  FCor := Value;
end;

procedure TUsuario.SetNome(const Value: String);
begin
  FNome := Value;
end;

end.
