unit uUsuario;

interface

uses
  System.Classes,
  Vcl.Dialogs,
  System.IniFiles,
  uDAOUsuario,
  FireDAC.Comp.Client,
  Data.DB;

type
  TUsuario = class
  private
    FIniConexao: TIniFile;
    FCodigo: Integer;
    FNome: String;

    FDAOUsuario: TDAOUsuario;
    FConsultaGeral: Integer;
  public
    property Codigo: Integer read FCodigo write FCodigo;
    property Nome: String read FNome write FNome;
    property ConsultaGeral: Integer read FConsultaGeral write FConsultaGeral;

    constructor Create;
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

  try
    FNome := FIniConexao.ReadString('Login', 'Usuario', '');
  finally
    FIniConexao.free;
  end;

  aUsuario := FDAOUsuario.RetornaUsuario(FNome).DataSet;

  FCodigo := aUsuario.FieldByName('cod_usu').AsInteger;
  FConsultaGeral := aUsuario.FieldByName('selecaogeral').AsInteger;
end;

end.
