unit Suporte.View.Pages.Form.Main;

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
  Data.DB,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.ExtCtrls,
  Vcl.StdCtrls,
  Vcl.DBCtrls,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.UI.Intf,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Def,
  FireDAC.Stan.Pool,
  FireDAC.Stan.Async,
  FireDAC.Phys,
  FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef,
  FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param,
  FireDAC.DatS,
  FireDAC.DApt.Intf,
  FireDAC.DApt,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  Vcl.Buttons,
  Vcl.Mask,
  Vcl.WinXPanels,
  Vcl.FileCtrl,
  Vcl.Clipbrd;

type
  TformPrincipal = class(TForm)

    gridProblemas: TDBGrid;
    gridModulos: TDBGrid;
    OpenDialog1: TOpenDialog;
    mmDetalhesProblema: TDBMemo;
    mmSolucao: TDBMemo;
    cbModulos: TDBComboBox;
    imgSolucao: TDBImage;
    imgProblema: TDBImage;
    btnNovoProblema: TSpeedButton;
    btnSalvarProblema: TSpeedButton;
    btnExcluirProblema: TSpeedButton;
    btnCancelarProblema: TSpeedButton;
    btnNovoModulo: TSpeedButton;
    btnSalvarModulo: TSpeedButton;
    btnExcluirModulo: TSpeedButton;
    btnCancelarModulo: TSpeedButton;
    lblTituloProblemas: TLabel;
    lblTituloModulos: TLabel;
    lblPesquisa: TLabel;
    lblModuloProblema: TLabel;
    lblDetalhesProblema: TLabel;
    lblSolucaoProblema: TLabel;
    lblPesquisaModulos: TLabel;
    lblTituloProblema: TLabel;
    lblDataProblema: TLabel;
    lblTotalDeProblemas: TLabel;
    lblNumeroChamado: TLabel;
    edtTituloProblema: TDBEdit;
    edtHoraProblema: TDBEdit;
    edtNumeroChamado: TDBEdit;
    edtPesquisaModulo: TEdit;
    edtPesquisaProblema: TEdit;
    btnAddImagemProblema: TButton;
    btnAddImagemSolucao: TButton;
    btnVerImagens: TButton;
    btnVerImagensSolucao: TButton;
    btnVoltarImagemProblema: TButton;
    btnRemoverImagemProblema: TButton;
    btnRemoverImagemSolucao: TButton;
    btnVoltarImagemSolucao: TButton;
    rdbtnFiltroPesquisaProblemas: TRadioGroup;
    pnlPrincipal: TPanel;
    pnlBodyModulosProblemas: TPanel;
    pnlCadastroProblema: TCard;
    pnlImagensProblema: TCard;
    pnlProblemas: TPanel;
    pnlMainImagemProblema: TPanel;
    pnlTopImagensProblemas: TPanel;
    pnlCenterImagemProblema: TPanel;
    pnlMainImagemSolucao: TPanel;
    pnlTopImagemSolucao: TPanel;
    pnlCenterImagemSolucao: TPanel;
    pnlBodyProblemas: TPanel;
    pnlTopProblemas: TPanel;
    pnlGridProblemas: TPanel;
    pnlPesquisaProblemas: TPanel;
    pnlPesquisaModulos: TPanel;
    pnlImagensSolucao: TCard;
    pnlBodyModulos: TPanel;
    pnlTopModulos: TPanel;
    pnlBotoesModulos: TPanel;
    pnlBotoesProblemas: TPanel;
    pnlGridModulos: TPanel;
    pnlTituloProblema: TPanel;
    cardPanelProblemas: TCardPanel;
    pnlTopCenterImagemSolucao: TPanel;
    btnImagemProblema: TButton;
    Panel1: TPanel;
    btnImagemSolucao: TButton;
    procedure btnVerImagensClick(Sender: TObject);
    procedure btnVoltarImagemProblemaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure gridModulosCellClick(Column: TColumn);
    procedure btnVoltarImagemSolucaoClick(Sender: TObject);
    procedure pnlImagensSolucaoClick(Sender: TObject);
    procedure btnVerImagensSolucaoClick(Sender: TObject);
    procedure btnImagemProblemaClick(Sender: TObject);
    procedure btnImagemSolucaoClick(Sender: TObject);
    procedure imgProblemaKeyPress(Sender: TObject; var Key: Char);
    procedure imgSolucaoKeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  formPrincipal: TformPrincipal;

implementation
{$R *.dfm}

uses
  jpeg,
  pngimage;


procedure TformPrincipal.gridModulosCellClick(Column: TColumn);
begin
  cardPanelProblemas.ActiveCard := pnlCadastroProblema;
end;

procedure TformPrincipal.imgProblemaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = ^V then
    if Clipboard.HasFormat(cf_bitmap) then
      imgProblema.Picture.Assign(Clipboard);
end;

procedure TformPrincipal.imgSolucaoKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = ^V then
    if Clipboard.HasFormat(cf_bitmap) then
      imgSolucao.Picture.Assign(Clipboard);
end;

procedure TformPrincipal.pnlImagensSolucaoClick(Sender: TObject);
begin
  cardPanelProblemas.ActiveCard := pnlImagensSolucao;
end;

procedure TformPrincipal.FormCreate(Sender: TObject);
begin
  cardPanelProblemas.ActiveCard := pnlCadastroProblema;

end;

procedure TformPrincipal.btnImagemProblemaClick(Sender: TObject);
begin
  cardPanelProblemas.ActiveCard := pnlImagensProblema;
end;

procedure TformPrincipal.btnImagemSolucaoClick(Sender: TObject);
begin
  cardPanelProblemas.ActiveCard := pnlImagensSolucao;
end;

procedure TformPrincipal.btnVerImagensClick(Sender: TObject);
begin
  cardPanelProblemas.ActiveCard := pnlImagensProblema;
end;

procedure TformPrincipal.btnVoltarImagemSolucaoClick(Sender: TObject);
begin
  cardPanelProblemas.ActiveCard := pnlCadastroProblema;
end;

procedure TformPrincipal.btnVerImagensSolucaoClick(Sender: TObject);
begin
  cardPanelProblemas.ActiveCard := pnlImagensSolucao;
end;

procedure TformPrincipal.btnVoltarImagemProblemaClick(Sender: TObject);
begin
  cardPanelProblemas.ActiveCard := pnlCadastroProblema;
end;

end.
