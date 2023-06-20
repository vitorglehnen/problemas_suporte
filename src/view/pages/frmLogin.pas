unit frmLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, frmMain,
  uControllerUsuario, uUsuario, Vcl.Imaging.pngimage;

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
    FFormMain: TFormPrincipal;
    FControllerUsuario: TControllerUsuario;
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
    aUsuario.Nome := edtUsuario.Text;
    aUsuario.Senha := edtSenha.Text;

    if FControllerUsuario.ValidaLogin(aUsuario) = True then
    begin
      FFormMain := TformPrincipal.Create(nil, aUsuario.Nome);

      try
        formLogin.Destroy;
        FFormMain.ShowModal;
      finally
        FFormMain.Free;
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
  FControllerUsuario := TControllerUsuario.Create;
end;

procedure TformLogin.FormDestroy(Sender: TObject);
begin
  FControllerUsuario.Free;
end;

procedure TformLogin.FormShow(Sender: TObject);
begin
  edtUsuario.SetFocus;
end;

end.
