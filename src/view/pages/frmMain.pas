unit frmMain;

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
  Vcl.Clipbrd,
  jpeg,
  pngimage;

type
  TformPrincipal = class(TForm)

    gridProblemas: TDBGrid;
    gridModulos: TDBGrid;
    btnNovoProblema: TSpeedButton;
    btnSalvarProblema: TSpeedButton;
    btnExcluirProblema: TSpeedButton;
    btnCancelarProblema: TSpeedButton;
    btnNovoModulo: TSpeedButton;
    btnSalvarModulo: TSpeedButton;
    btnExcluirModulo: TSpeedButton;
    btnCancelarModulo: TSpeedButton;
    lblTituloProblemas: TLabel;
    lblTituloModulo: TLabel;
    lblTotalDeProblemas: TLabel;
    pnlPrincipal: TPanel;
    pnlBodyModulosProblemas: TPanel;
    pnlCadastroProblema: TCard;
    pnlProblemas: TPanel;
    pnlBodyProblemas: TPanel;
    pnlTopProblemas: TPanel;
    pnlGridProblemas: TPanel;
    pnlBodyPesqProblema: TPanel;
    pnlBodyPesqModulo: TPanel;
    pnlBodyModulos: TPanel;
    pnlTopModulos: TPanel;
    pnlBotaoCrudModulo: TPanel;
    pnlBotaoCrudProblema: TPanel;
    pnlGridModulos: TPanel;
    cardPanelProblemas: TCardPanel;
    pnlPesqModulo: TPanel;
    lblPesqModulo: TLabel;
    edtPesqModulo: TEdit;
    pnlPesqProblema: TPanel;
    lblPesqProblema: TLabel;
    edtPesqProblema: TEdit;
    pnlFiltroPesqProblema: TPanel;
    rdbtnFiltroPesqProblema: TRadioGroup;
    cbFiltroPesqProblema: TComboBox;
    pnlTopProblema: TPanel;
    pnlTituloProblema: TPanel;
    pnlDataProblema: TPanel;
    pnlChamadoProblema: TPanel;
    lblTituloProblema: TLabel;
    edtTituloProblema: TEdit;
    edtChamadoProblema: TEdit;
    lblChamadoProblema: TLabel;
    edtDataProblema: TEdit;
    lblDataProblema: TLabel;
    pnlBodyModuloProblema: TPanel;
    pnlModuloProblema: TPanel;
    lblModuloProblema: TLabel;
    pnlBodyDetalhesProblema: TPanel;
    pnlDetalhesProblema: TPanel;
    lblDetalhesProblema: TLabel;
    pnlBodySolucaoProblema: TPanel;
    pnlSolucaoProblema: TPanel;
    lblSolucaoProblema: TLabel;
    cbModulo: TComboBox;
    mmSolucaoProblema: TMemo;
    mmDetalhesProblema: TMemo;
    OpenDialog1: TOpenDialog;
    tbModulos: TFDMemTable;
    dsModulos: TDataSource;
    tbProblemas: TFDMemTable;
    dsProblemas: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure gridModulosCellClick(Column: TColumn);

  private
    { Private declarations }
    procedure BuscaTbProblemasPorModulo;

  public
    { Public declarations }
  end;

var
  formPrincipal: TformPrincipal;

implementation

{$R *.dfm}

uses
  uControllerProblema, uControllerModulo;

procedure TformPrincipal.FormCreate(Sender: TObject);
var
  aControllerModulo: TControllerModulo;
begin
  aControllerModulo := TControllerModulo.Create;

  try
    tbModulos.Data := aControllerModulo.BuscaTabelaModulos.Data;
    BuscaTbProblemasPorModulo;
  finally
    aControllerModulo.Free;
  end;
end;

procedure TformPrincipal.gridModulosCellClick(Column: TColumn);
begin
  BuscaTbProblemasPorModulo;
end;

procedure TformPrincipal.BuscaTbProblemasPorModulo;
var
  aControllerProblema: TControllerProblema;
  aModuloSelecionado: String;
begin
  aControllerProblema := TControllerProblema.Create;
  aModuloSelecionado := gridModulos.Columns[0].Field.Value;

  try
    tbProblemas.Close;
    tbProblemas.Data := aControllerProblema.TabelaProblemasPorModulo
      (aModuloSelecionado).Data;
  finally
    aControllerProblema.Free;
  end;
end;

end.
