unit frmLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, frmMain;

type
  TformLogin = class(TForm)
    Panel1: TPanel;
    btnEntrar: TButton;
    Label1: TLabel;
    Label2: TLabel;
    edtUsuario: TEdit;
    edtSenha: TEdit;
    pnlLogo: TPanel;
    procedure btnEntrarClick(Sender: TObject);
  private
    { Private declarations }
    FFormMain: TFormPrincipal;
  public
    { Public declarations }
  end;

var
  formLogin: TformLogin;

implementation

{$R *.dfm}

procedure TformLogin.btnEntrarClick(Sender: TObject);
begin
  FFormMain := TformPrincipal.Create(nil);

  try
    FFormMain.ShowModal;
  finally
    FFormMain.Free;
  end;
end;

end.
