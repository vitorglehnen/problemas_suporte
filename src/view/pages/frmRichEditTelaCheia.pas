unit frmRichEditTelaCheia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.ExtCtrls;

type
  TformRichEditTelaCheia = class(TForm)
    pnlMain: TPanel;
    pnlTop: TPanel;
    mmPrincipal: TRichEdit;
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent; aTexto: String; aNomeRichEdit: String);
  end;

var
  FormRichEditTelaCheia: TFormRichEditTelaCheia;

implementation

{$R *.dfm}

{ TformRichEditTelaCheia }

constructor TformRichEditTelaCheia.Create(AOwner: TComponent; aTexto: String; aNomeRichEdit: String);
begin
  inherited Create(AOwner);

  mmPrincipal.Text := aTexto;
  pnlTop.Caption := aNomeRichEdit;
end;

end.
