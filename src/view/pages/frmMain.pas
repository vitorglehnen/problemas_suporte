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
  Data.DBXCommon,
  Vcl.ComCtrls,
  uControllerModulo,
  uControllerProblema,
  uProblema, Vcl.ExtActns, Vcl.StdActns, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, Vcl.ToolWin, Vcl.ActnCtrls,
  Vcl.BandActn;

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
    pnlBodyModuloProblema: TPanel;
    pnlModuloProblema: TPanel;
    lblModuloProblema: TLabel;
    pnlBodySolucaoProblema: TPanel;
    pnlSolucaoProblema: TPanel;
    lblSolucaoProblema: TLabel;
    cbModulo: TComboBox;
    gridProblemas: TDBGrid;
    edtNomeModulo: TLabeledEdit;
    btnEditarModulo: TSpeedButton;
    btnNovoModulo: TSpeedButton;
    btnEditarProblema: TSpeedButton;
    pnlTopProblema: TPanel;
    pnlDataProblema: TPanel;
    lblDataProblema: TLabel;
    edtDataProblema: TMaskEdit;
    pnlChamadoProblema: TPanel;
    lblChamadoProblema: TLabel;
    edtChamadoProblema: TEdit;
    pnlTituloProblema: TPanel;
    lblTituloProblema: TLabel;
    edtTituloProblema: TEdit;
    pnlBodyDetalhesProblema: TPanel;
    pnlDetalhesProblema: TPanel;
    lblDetalhesProblema: TLabel;
    mmDetalhesProblema: TMemo;
    mmSolucaoProblema: TRichEdit;
    ActionToolBar1: TActionToolBar;
    ActionManager1: TActionManager;
    Action2: TAction;
    FormatRichEditBold1: TRichEditBold;
    FormatRichEditItalic1: TRichEditItalic;
    FormatRichEditUnderline1: TRichEditUnderline;
    FormatRichEditStrikeOut1: TRichEditStrikeOut;
    FormatRichEditBullets1: TRichEditBullets;
    FormatRichEditAlignLeft1: TRichEditAlignLeft;
    FormatRichEditAlignRight1: TRichEditAlignRight;
    FormatRichEditAlignCenter1: TRichEditAlignCenter;
    FormatRichEditBold2: TRichEditBold;
    FormatRichEditItalic2: TRichEditItalic;
    FormatRichEditUnderline2: TRichEditUnderline;
    FormatRichEditStrikeOut2: TRichEditStrikeOut;
    FormatRichEditBullets2: TRichEditBullets;
    FormatRichEditAlignLeft2: TRichEditAlignLeft;
    FormatRichEditAlignRight2: TRichEditAlignRight;
    FormatRichEditAlignCenter2: TRichEditAlignCenter;
    FormatRichEditAlignCenter3: TRichEditAlignCenter;
    CustomizeActionBars1: TCustomizeActionBars;
    pnlImagensProblema: TCard;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure gridModulosCellClick(Column: TColumn);
    procedure edtNomeModuloExit(Sender: TObject);
    procedure gridModulosColExit(Sender: TObject);
    procedure btnNovoModuloMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnCancelarModuloMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnSalvarModuloMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnEditarModuloMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnNovoProblemaMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure pnlProblemasExit(Sender: TObject);
    procedure btnCancelarProblemaMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure btnSalvarProblemaMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure rdbtnFiltroPesqProblemaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure gridProblemasCellClick(Column: TColumn);

  private
    { Private declarations }
    FControllerModulo: TControllerModulo;
    FControllerProblema: TControllerProblema;
    FEdicaoModulo: Boolean;
    procedure CarregaGridProblemasPorModulo;
    procedure CarregaGridProblemasTodos;
    procedure CarregaDadosProblemas;
    procedure CarregaGridModulos;
    procedure CarregaTbProblemasPorModulo;
    procedure PreencheCbxModulos;
    procedure InverteBotoesCrudModulos;
    procedure InverteBotoesCrudProblemas;
  public
    { Public declarations }
  end;

var
  formPrincipal: TformPrincipal;

implementation

{$R *.dfm}

uses
  uModulo;

procedure TformPrincipal.edtNomeModuloExit(Sender: TObject);
begin
  if not btnNovoModulo.Enabled then
  begin
    MessageBox(0, PChar('Salve ou cancele antes de continuar!'), 'Cadastro de m�dulos',
      MB_ICONWARNING or MB_OK);
    edtNomeModulo.SetFocus;
  end;
end;

procedure TformPrincipal.FormCreate(Sender: TObject);
begin
  FControllerProblema := TControllerProblema.Create;
  FControllerModulo := TControllerModulo.Create;

  CarregaGridModulos;
end;

procedure TformPrincipal.FormDestroy(Sender: TObject);
begin
  FControllerProblema.Free;
  FControllerModulo.Free;
end;

procedure TformPrincipal.FormShow(Sender: TObject);
begin
  edtPesqModulo.SetFocus;

  cardPanelProblemas.ActiveCard := pnlCadastroProblema;
end;

procedure TformPrincipal.gridModulosCellClick(Column: TColumn);
begin
  CarregaGridProblemasPorModulo;

  CarregaDadosProblemas;
end;

procedure TformPrincipal.gridModulosColExit(Sender: TObject);
begin
  ShowMessage(gridModulos.Columns[0].Field.Value);
end;

procedure TformPrincipal.gridProblemasCellClick(Column: TColumn);
begin
  CarregaDadosProblemas;
end;

procedure TformPrincipal.InverteBotoesCrudModulos;
begin
  btnNovoModulo.Enabled := not btnNovoModulo.Enabled;
  btnSalvarModulo.Enabled := not btnSalvarModulo.Enabled;
  btnCancelarModulo.Enabled := not btnCancelarModulo.Enabled;
  btnEditarModulo.Enabled := not btnEditarModulo.Enabled;
  edtNomeModulo.Enabled := not edtNomeModulo.Enabled;
  gridModulos.Enabled := not gridModulos.Enabled;
end;

procedure TformPrincipal.InverteBotoesCrudProblemas;
begin
  btnNovoProblema.Enabled := not btnNovoProblema.Enabled;
  btnSalvarProblema.Enabled := not btnSalvarProblema.Enabled;
  btnEditarProblema.Enabled := not btnEditarProblema.Enabled;
  btnExcluirProblema.Enabled := not btnExcluirProblema.Enabled;
  btnCancelarProblema.Enabled := not btnCancelarProblema.Enabled;

  pnlProblemas.Enabled := True;

  edtTituloProblema.SetFocus;
end;

procedure TformPrincipal.pnlProblemasExit(Sender: TObject);
begin
  if not btnNovoProblema.Enabled then
  begin
    MessageBox(0, PChar('Salve ou cancele antes de continuar!'), 'Cadastro de problemas',
      MB_ICONWARNING or MB_OK);
    pnlProblemas.SetFocus;
  end;
end;

procedure TformPrincipal.PreencheCbxModulos;
begin
  var
  aNomeModulos := FControllerModulo.BuscaTabelaModulos.DataSet;

  while not aNomeModulos.Eof do
  begin
    cbModulo.Items.Add(aNomeModulos.FieldByName('nome').Value);
    aNomeModulos.Next;
  end;
end;

procedure TformPrincipal.rdbtnFiltroPesqProblemaClick(Sender: TObject);
begin
  if rdbtnFiltroPesqProblema.ItemIndex = 0 then
  begin
    pnlBodyModulos.Visible := False;

    CarregaGridProblemasTodos;
  end
  else if rdbtnFiltroPesqProblema.ItemIndex = 1 then
  begin
    pnlBodyModulos.Visible := True;

    CarregaGridProblemasPorModulo;
  end;
end;

procedure TformPrincipal.btnCancelarModuloMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  InverteBotoesCrudModulos;
end;

procedure TformPrincipal.btnCancelarProblemaMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  InverteBotoesCrudProblemas;

  pnlProblemas.Enabled := False;
end;

procedure TformPrincipal.btnEditarModuloMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  InverteBotoesCrudModulos;

  FEdicaoModulo := True;
end;

procedure TformPrincipal.btnNovoModuloMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  InverteBotoesCrudModulos;

  edtNomeModulo.SetFocus;
  edtNomeModulo.Text := '';

  FEdicaoModulo := False;
end;

procedure TformPrincipal.btnNovoProblemaMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  InverteBotoesCrudProblemas;

  pnlProblemas.Enabled := True;
  edtTituloProblema.SetFocus;

  edtTituloProblema.Clear;
  edtChamadoProblema.Clear;
  edtDataProblema.Text := DateToStr(date);
  cbModulo.ItemIndex := -1;
  mmSolucaoProblema.Clear;
  mmDetalhesProblema.Clear;

  PreencheCbxModulos;
end;

procedure TformPrincipal.btnSalvarModuloMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if FEdicaoModulo then
  begin
    FControllerModulo.UpdateModulo(gridModulos.Columns[0].Field.Value,
      edtNomeModulo.Text);
  end
  else
    FControllerModulo.InsertModulo(edtNomeModulo.Text);

  CarregaGridModulos;
  InverteBotoesCrudModulos;
end;

procedure TformPrincipal.btnSalvarProblemaMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  var aProblema : TProblema:= TProblema.Create;

  InverteBotoesCrudProblemas;

  try
    aProblema.Titulo := edtTituloProblema.Text;
    aProblema.Modulo := cbModulo.Text;
    aProblema.Chamado := edtChamadoProblema.Text;
    aProblema.Detalhes := mmDetalhesProblema.Text;
    aProblema.Solucao := mmSolucaoProblema.Text;

    FControllerProblema.InsertProblema(aProblema);
  finally
    aProblema.Free;
  end;

  if rdbtnFiltroPesqProblema.ItemIndex = 0 then
  begin
    CarregaGridProblemasTodos;
  end
  else if rdbtnFiltroPesqProblema.ItemIndex = 1 then
  begin
    CarregaGridProblemasPorModulo;
  end;
end;

procedure TformPrincipal.CarregaDadosProblemas;
begin
  var aNomeProblema: String := gridProblemas.Columns[0].Field.Value;
  var aProblema: TDataSet;

  aProblema := FControllerProblema.CarregaDadosProblema(aNomeProblema).DataSet;

  edtTituloProblema.Text := aProblema.FieldByName('titulo').Value;
  cbModulo.Text := aProblema.FieldByName('modulo').Value;
  edtChamadoProblema.Text := aProblema.FieldByName('chamado').Value;
  mmDetalhesProblema.Text := aProblema.FieldByName('detalhes').Value;
  mmSolucaoProblema.Text := aProblema.FieldByName('solucao').Value;
  edtDataProblema.Text := aProblema.FieldByName('datacr').Value;
end;

procedure TformPrincipal.CarregaGridModulos;
begin
  var
    aNomeModulo: String;

  if FControllerModulo.BuscaTabelaModulos.DataSet.RecordCount > 0 then
  begin
    gridModulos.DataSource := FControllerModulo.BuscaTabelaModulos;
    aNomeModulo := gridModulos.Columns[0].Field.Value;
    edtNomeModulo.Text := aNomeModulo;
  end;
end;

procedure TformPrincipal.CarregaGridProblemasPorModulo;
begin
  var
    aNomeModulo: String := gridModulos.Columns[0].Field.Value;

  gridProblemas.DataSource := FControllerProblema.BuscaTabelaProblemasPorModulo
  (aNomeModulo);
  edtNomeModulo.Text := aNomeModulo;
end;

procedure TformPrincipal.CarregaGridProblemasTodos;
begin
  gridProblemas.DataSource := FControllerProblema.BuscaTabelaProblemas;
end;

procedure TformPrincipal.CarregaTbProblemasPorModulo;
begin

end;

end.
