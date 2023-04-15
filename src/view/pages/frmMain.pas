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
  pngimage,
  System.Generics.Collections,
  Data.DB,
  Data.DBXCommon, Vcl.ComCtrls, uControllerModulo, uControllerProblema;

type
  TformPrincipal = class(TForm)
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
    gridProblemas: TDBGrid;
    edtNomeModulo: TLabeledEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnNovoModuloClick(Sender: TObject);
    procedure gridModulosCellClick(Column: TColumn);
    procedure btnSalvarModuloClick(Sender: TObject);

  private
    { Private declarations }
    FControllerModulo: TControllerModulo;
    FControllerProblema: TControllerProblema;
    procedure CarregaGridProblemasPorModulo;
    procedure CarregaDadosProblemas;
    procedure CarregaGridModulos;
    procedure CarregaTbProblemasPorModulo;
  public
    { Public declarations }
  end;

var
  formPrincipal: TformPrincipal;

implementation

{$R *.dfm}

uses
  uModulo;

procedure TformPrincipal.CarregaTbProblemasPorModulo;
begin
end;

procedure TformPrincipal.FormCreate(Sender: TObject);
begin
  FControllerModulo := TControllerModulo.Create;
  FControllerProblema := TControllerProblema.Create;

  CarregaGridModulos;
  CarregaGridProblemasPorModulo;
end;

procedure TformPrincipal.FormDestroy(Sender: TObject);
begin
  FControllerProblema.Free;
  FControllerModulo.Free;
end;

procedure TformPrincipal.gridModulosCellClick(Column: TColumn);
begin
  CarregaGridProblemasPorModulo;
end;

procedure TformPrincipal.btnNovoModuloClick(Sender: TObject);
begin
  edtNomeModulo.SetFocus;
  edtNomeModulo.Text := '';

  btnSalvarModulo.Enabled := True;
  btnCancelarModulo.Enabled := True;
  btnNovoModulo.Enabled := False;
  btnExcluirModulo.Enabled := False;
end;

procedure TformPrincipal.btnSalvarModuloClick(Sender: TObject);
begin
  FControllerModulo.InsertModulo(edtNomeModulo.Text);

  CarregaGridModulos;
end;

procedure TformPrincipal.CarregaDadosProblemas;
begin
end;

procedure TformPrincipal.CarregaGridModulos;
begin
  gridModulos.DataSource := FControllerModulo.BuscaTabelaModulos;
end;

procedure TformPrincipal.CarregaGridProblemasPorModulo;
begin
  var
    aNomeModulo: String := gridModulos.Columns[0].Field.Value;

  gridProblemas.DataSource := FControllerProblema
                              .BuscaTabelaProblemasPorModulo(aNomeModulo);

  edtNomeModulo.Text := aNomeModulo;
end;

end.
