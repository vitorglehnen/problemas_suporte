unit frmPreferencias;

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
  uUsuario,
  Vcl.StdCtrls,
  Data.DB,
  uDAOUsuario;

type
  TFormPreferencias = class(TForm)
    FormPreferencias: TPanel;
    pnlTop: TPanel;
    rdgpConsultaPadrao: TRadioGroup;
    cbCorPadrao: TColorBox;
    Label1: TLabel;
  private
    FUsuario: TUsuario;
    FDAOUsuario: TDAOUsuario;

    { Private declarations }
  public
    constructor Create(AOwner: TComponent; aUsuario: TUsuario);
    destructor Destroy; override;

    { Public declarations }
  end;

var
  FormPreferencias: TFormPreferencias;

implementation

{$R *.dfm}


{ TFormPreferencias }

constructor TFormPreferencias.Create(AOwner: TComponent; aUsuario: TUsuario);
begin
  inherited Create(AOwner);

  FUsuario := aUsuario;

  FDAOUsuario := TDAOUsuario.Create;

  if (FUsuario.ConsultaGeral = 0) or (FUsuario.ConsultaGeral = 1) then
    rdgpConsultaPadrao.ItemIndex := FUsuario.ConsultaGeral;

  cbCorPadrao.Selected := StringToColor(FUsuario.Cor);

  pnlTop.Caption := FUsuario.Nome;
end;

destructor TFormPreferencias.Destroy;
begin
  FUsuario.SetConsultaGeral(rdgpConsultaPadrao.ItemIndex);
  FUsuario.SetCor(ColorToString(cbCorPadrao.Selected));

  FDAOUsuario.AtualizaUsuario(FUsuario);

  inherited;
end;

end.
