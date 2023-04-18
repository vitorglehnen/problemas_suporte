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
    btnSalvarModulo: TSpeedButton;
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
    btnEditarModulo: TSpeedButton;
    btnNovoModulo: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnNovoModuloClick(Sender: TObject);
    procedure gridModulosCellClick(Column: TColumn);
    procedure btnSalvarModuloClick(Sender: TObject);
    procedure edtNomeModuloExit(Sender: TObject);
    procedure btnEditarModuloClick(Sender: TObject);
    procedure btnCancelarModuloClick(Sender: TObject);
    procedure gridModulosColExit(Sender: TObject);
    procedure btnNovoProblemaClick(Sender: TObject);

  private
    { Private declarations }
    FControllerModulo: TControllerModulo;
    FControllerProblema: TControllerProblema;
    FEdicaoModulo: Boolean;
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

procedure TformPrincipal.edtNomeModuloExit(Sender: TObject);
begin
  btnNovoModulo.Enabled := True;
  btnSalvarModulo.Enabled := False;
  btnCancelarModulo.Enabled := False;
  btnEditarModulo.Enabled := True;
  edtNomeModulo.Enabled := False;
  gridModulos.Enabled := True;
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

procedure TformPrincipal.gridModulosColExit(Sender: TObject);
begin
  ShowMessage(gridModulos.Columns[0].Field.Value);
end;

procedure TformPrincipal.btnCancelarModuloClick(Sender: TObject);
begin
  btnNovoModulo.Enabled := True;
  btnSalvarModulo.Enabled := False;
  btnCancelarModulo.Enabled := False;
  btnEditarModulo.Enabled := True;
  edtNomeModulo.Enabled := False;
  gridModulos.Enabled := True;

  edtNomeModulo.Text := gridModulos.Columns[0].Field.Value;
end;

procedure TformPrincipal.btnEditarModuloClick(Sender: TObject);
begin
  btnNovoModulo.Enabled := False;
  btnSalvarModulo.Enabled := True;
  btnCancelarModulo.Enabled := True;
  btnEditarModulo.Enabled := False;
  edtNomeModulo.Enabled := True;
  gridModulos.Enabled := False;

  FEdicaoModulo := True;
end;

procedure TformPrincipal.btnNovoModuloClick(Sender: TObject);
begin
  btnNovoModulo.Enabled := False;
  btnSalvarModulo.Enabled := True;
  btnCancelarModulo.Enabled := True;
  btnEditarModulo.Enabled := False;
  edtNomeModulo.Enabled := True;
  gridModulos.Enabled := False;

  edtNomeModulo.SetFocus;
  edtNomeModulo.Text := '';

  FEdicaoModulo := False;
end;

procedure TformPrincipal.btnNovoProblemaClick(Sender: TObject);
begin
  var aTabelaModulos := FControllerModulo.BuscaTabelaModulos;
  pnlProblemas.Enabled := True;
  edtTituloProblema.SetFocus;

  while not FControllerModulo.BuscaTabelaModulos.DataSet.Eof do
  begin
    cbModulo.Items.Add(aTabelaModulos.DataSet.FieldByName('nome').Value);
    ShowMessage(aTabelaModulos.DataSet.FieldByName('nome').Value);
  end;
end;

procedure TformPrincipal.btnSalvarModuloClick(Sender: TObject);
begin
  if FEdicaoModulo then
  begin
    FControllerModulo.UpdateModulo(gridModulos.Columns[0].Field.Value,
                                    edtNomeModulo.Text);
  end
  else
    FControllerModulo.InsertModulo(edtNomeModulo.Text);

  CarregaGridModulos;

  btnNovoModulo.Enabled := True;
  btnSalvarModulo.Enabled := False;
  btnCancelarModulo.Enabled := False;
  btnEditarModulo.Enabled := True;
  edtNomeModulo.Enabled := False;
  gridModulos.Enabled := True;
end;

procedure TformPrincipal.CarregaDadosProblemas;
begin
end;

procedure TformPrincipal.CarregaGridModulos;
begin
  var
    aNomeModulo: String;

  gridModulos.DataSource := FControllerModulo.BuscaTabelaModulos;

  aNomeModulo:= gridModulos.Columns[0].Field.Value;
  edtNomeModulo.Text := aNomeModulo;
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
