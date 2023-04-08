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
    procedure FormCreate(Sender: TObject);
    procedure gridModulosCellClick(Column: TColumn);

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
  pngimage,
  uConexao;


procedure TformPrincipal.gridModulosCellClick(Column: TColumn);
begin
  cardPanelProblemas.ActiveCard := pnlCadastroProblema;
end;

procedure TformPrincipal.FormCreate(Sender: TObject);
var
  aConexao: TConexao;
  aQuery: TFDQuery;
begin
  cardPanelProblemas.ActiveCard := pnlCadastroProblema;

  aConexao:= TConexao.Create;
  try
    aQuery:= aConexao.CriarQuery;
    aQuery.SQL.Text := 'SELECT * FROM MODULOS';
    aQuery.Open;
    mmSolucaoProblema.Text := aQuery.Fields[0].AsString;
  finally
    aConexao.Free;
    aQuery.Free;
  end;
end;
end.
