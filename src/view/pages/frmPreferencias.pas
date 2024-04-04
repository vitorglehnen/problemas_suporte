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
  uDAOUsuario,
  Vcl.Grids,
  Vcl.Outline,
  Vcl.Samples.DirOutln,
  Vcl.Mask,
  uControllerProblema, uControllerModulo;

type
  TFormPreferencias = class(TForm)
    FormPreferencias: TPanel;
    pnlTop: TPanel;
    rdgpConsultaPadrao: TRadioGroup;
    cbCorPadrao: TColorBox;
    lblCorPadrao: TLabel;
    btnSalvar: TButton;
    lblEstatisticas: TLabel;
    pnlLineDesign: TPanel;
    lblQtdeProblemas: TLabel;
    lblQtdeModulos: TLabel;
    chkFiltrarPorUsuario: TCheckBox;
    procedure btnSalvarClick(Sender: TObject);
    procedure chkFiltrarPorUsuarioClick(Sender: TObject);
  private
    FUsuario: TUsuario;
    FDAOUsuario: TDAOUsuario;
    FControllerProblema: TControllerProblema;
    FControllerModulo: TControllerModulo;

    { Private declarations }
  public
    constructor Create(AOwner: TComponent; aUsuario: TUsuario);
    destructor Destroy; override;

    procedure CarregaEstatisticas;
    procedure CarregaEstatisticasPorUsuario;

    { Public declarations }
  end;

var
  FormPreferencias: TFormPreferencias;

implementation

{$R *.dfm}


{ TFormPreferencias }

constructor TFormPreferencias.Create(AOwner: TComponent; aUsuario: TUsuario);
begin
  { Método construtor da classe }

  inherited Create(AOwner);

  FDAOUsuario := TDAOUsuario.Create;
  FUsuario := aUsuario;
  FControllerProblema := TControllerProblema.Create;
  FControllerModulo := TControllerModulo.Create;

  CarregaEstatisticas();

  if (FUsuario.ConsultaGeral = 0) or (FUsuario.ConsultaGeral = 1) then
    rdgpConsultaPadrao.ItemIndex := FUsuario.ConsultaGeral;

  cbCorPadrao.Selected := StringToColor(FUsuario.Cor);

  pnlTop.Caption := FUsuario.Nome;
end;

procedure TFormPreferencias.btnSalvarClick(Sender: TObject);
begin
  { Salva as preferências alteradas }

  FUsuario.SetConsultaGeral(rdgpConsultaPadrao.ItemIndex);
  FUsuario.SetCor(ColorToString(cbCorPadrao.Selected));

  FDAOUsuario.AtualizaUsuario(FUsuario);

  Close;
end;

procedure TFormPreferencias.CarregaEstatisticas;
var
  aQtdeTotalProblemas : integer;
  aQtdeTotalModulos : integer;
begin
  aQtdeTotalProblemas := FControllerProblema.BuscaQtdeTotalProblemas;
  aQtdeTotalModulos := FControllerModulo.BuscaQtdeTotalModulos;

  lblQtdeProblemas.Caption := 'Problemas cadastrados: ' + IntToStr(aQtdeTotalProblemas);
  lblQtdeModulos.Caption := 'Módulos cadastrados: ' + IntToStr(aQtdeTotalModulos);
end;

procedure TFormPreferencias.CarregaEstatisticasPorUsuario;
var
  aQtdeTotalProblemas : integer;
  aQtdeTotalModulos : integer;
begin
  aQtdeTotalProblemas := FControllerProblema.BuscaQtdeTotalProblemasPorUsuario(FUsuario);
  aQtdeTotalModulos := FControllerModulo.BuscaQtdeTotalModulosPorUsuario(FUsuario);

  lblQtdeProblemas.Caption := 'Problemas cadastrados: ' + IntToStr(aQtdeTotalProblemas);
  lblQtdeModulos.Caption := 'Módulos cadastrados: ' + IntToStr(aQtdeTotalModulos);
end;

procedure TFormPreferencias.chkFiltrarPorUsuarioClick(Sender: TObject);
begin
  if chkFiltrarPorUsuario.Checked then
    CarregaEstatisticasPorUsuario
  else
    CarregaEstatisticas;
end;

destructor TFormPreferencias.Destroy;
begin
  { Método destrutor da classe }

  FDAOUsuario.Free;

  inherited;
end;

end.
