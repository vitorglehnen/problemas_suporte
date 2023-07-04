unit frmLogin;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.StdCtrls,
  uControllerUsuario,
  uUsuario,
  Vcl.Imaging.pngimage,
  System.IniFiles;

type
  TformLogin = class(TForm)
    pnlMain: TPanel;
    btnEntrar: TButton;
    lblUsuario: TLabel;
    lblSenha: TLabel;
    edtUsuario: TEdit;
    edtSenha: TEdit;
    pnlLogo: TPanel;
    Image1: TImage;
    procedure btnEntrarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure edtUsuarioKeyPress(Sender: TObject; var Key: Char);
    procedure edtSenhaKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FControllerUsuario: TControllerUsuario;

    FIniConexão: TIniFile;

    FUsuario: String;
    FSenha: String;

  public
    { Public declarations }
  end;

var
  formLogin: TformLogin;

implementation

{$R *.dfm}

procedure TformLogin.btnEntrarClick(Sender: TObject);
begin
  var aUsuario : TUsuario := TUsuario.Create;

  try
    FUsuario := edtUsuario.Text;
    FSenha := edtSenha.Text;
    aUsuario.Nome := edtUsuario.Text;
    aUsuario.Senha := edtSenha.Text;

    if FControllerUsuario.ValidaLogin(aUsuario) = True then
    begin

      try
        formLogin.Destroy;
      finally

      end;
    end
    else
    begin
      Application.MessageBox('Usuário ou senha inválida!', 'Login', +MB_ICONWARNING + MB_OK);
      edtUsuario.SetFocus;
    end;
  finally
    aUsuario.Free;
  end;
end;

procedure TformLogin.edtSenhaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #9;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TformLogin.edtUsuarioKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #9;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;
end;

procedure TformLogin.FormCreate(Sender: TObject);
begin
  var aUsuario : TUsuario := TUsuario.Create;
  FControllerUsuario := TControllerUsuario.Create;
  FIniConexão := TIniFIle.Create(ExtractFilePath(ParamStr(0)) + 'Connect.ini');

  try
    FUsuario := FIniConexão.ReadString('Login', 'Usuario', '');
    aUsuario.Nome := FUsuario;

  finally
    FIniConexão.Free;
    aUsuario.Free;
  end;
end;

procedure TformLogin.FormDestroy(Sender: TObject);
begin
  FControllerUsuario.Free;
end;

procedure TformLogin.FormShow(Sender: TObject);
begin
  ShowWindow(Application.Handle, SW_SHOW);

  edtUsuario.SetFocus;

  edtUsuario.Text := FUsuario;
  edtSenha.Text := FSenha;
end;

end.
