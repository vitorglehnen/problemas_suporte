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
    gridProblemas: TDBGrid;
    edtNomeModulo: TLabeledEdit;
    btnEditarModulo: TSpeedButton;
    btnNovoModulo: TSpeedButton;
    btnEditarProblema: TSpeedButton;
    ActionManager1: TActionManager;
    CustomizeActionBars1: TCustomizeActionBars;
    pnlImagensProblema: TCard;
    pnlProblemas: TPanel;
    pnlBodyModuloProblema: TPanel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    pnlModuloProblema: TPanel;
    lblModuloProblema: TLabel;
    cbModulo: TComboBox;
    pnlBodySolucaoProblema: TPanel;
    pnlSolucaoProblema: TPanel;
    lblSolucaoProblema: TLabel;
    mmSolucaoProblema: TRichEdit;
    pnlTopProblema: TPanel;
    pnlBodyDetalhesProblema: TPanel;
    pnlDetalhesProblema: TPanel;
    lblDetalhesProblema: TLabel;
    mmDetalhesProblema: TMemo;
    edtDataProblema: TMaskEdit;
    lblDataProblema: TLabel;
    edtChamadoProblema: TEdit;
    lblChamadoProblema: TLabel;
    lblCodProblema: TLabel;
    edtCodProblema: TEdit;
    lblTituloProblema: TLabel;
    edtTituloProblema: TEdit;
    ActionToolBar1: TActionToolBar;
    FormatRichEditBold1: TRichEditBold;
    FormatRichEditItalic1: TRichEditItalic;
    FormatRichEditUnderline1: TRichEditUnderline;
    FormatRichEditStrikeOut1: TRichEditStrikeOut;
    FormatRichEditBullets1: TRichEditBullets;
    FormatRichEditAlignLeft1: TRichEditAlignLeft;
    FormatRichEditAlignRight1: TRichEditAlignRight;
    FormatRichEditAlignCenter1: TRichEditAlignCenter;
    cbSizeFontSolucao: TComboBox;
    cbNameFontSolucao: TComboBox;
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
    procedure btnCancelarProblemaMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure btnSalvarProblemaMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure rdbtnFiltroPesqProblemaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure gridProblemasCellClick(Column: TColumn);
    procedure cardPanelProblemasExit(Sender: TObject);
    procedure btnEditarProblemaClick(Sender: TObject);
    procedure btnExcluirProblemaClick(Sender: TObject);
    procedure mmSolucaoProblemaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton2Click(Sender: TObject);
    procedure mmSolucaoProblemaEnter(Sender: TObject);
    procedure cbSizeFontSolucaoChange(Sender: TObject);

  private
    { Private declarations }
    FControllerModulo: TControllerModulo;
    FControllerProblema: TControllerProblema;
    FEdicaoModulo: Boolean;
    FEdicaoProblema: Boolean;

    procedure EventoSalvarProblema;
    procedure EventoCadastrarProblema;
    procedure CarregaGridProblemas;
    procedure CarregaDadosProblemas;
    procedure CarregaGridModulos;
    procedure PreencheCbxModulos;
    procedure InverteBotoesCrudModulos;
    procedure InverteBotoesCrudProblemas;
    procedure InverteCamposProblemas;
  public
    { Public declarations }
  end;

var
  formPrincipal: TformPrincipal;

implementation

{$R *.dfm}

uses
  uModulo, frmImagensProblema;

procedure TformPrincipal.edtNomeModuloExit(Sender: TObject);
begin
  if not btnNovoModulo.Enabled then
  begin
    MessageBox(0, PChar('Salve ou cancele antes de continuar!'), 'Cadastro de módulos',
      MB_ICONWARNING or MB_OK);
    edtNomeModulo.SetFocus;
  end;
end;

procedure TformPrincipal.EventoCadastrarProblema;
begin
  FEdicaoProblema := False;

  InverteCamposProblemas;
  InverteBotoesCrudProblemas;

  edtTituloProblema.SetFocus;

  edtTituloProblema.Clear;
  edtChamadoProblema.Clear;
  edtDataProblema.Text := DateToStr(date);
  edtCodProblema.Clear;
  cbModulo.ItemIndex := -1;
  mmSolucaoProblema.Clear;
  mmDetalhesProblema.Clear;

  PreencheCbxModulos;
end;

procedure TformPrincipal.EventoSalvarProblema;
begin
  var aProblema : TProblema:= TProblema.Create;
  var ms : TMemoryStream := TMemoryStream.Create;

  InverteBotoesCrudProblemas;

  try
    mmSolucaoProblema.Lines.SaveToStream(ms);

    aProblema.Titulo := edtTituloProblema.Text;
    aProblema.Modulo := cbModulo.Text;
    aProblema.Chamado := edtChamadoProblema.Text;
    aProblema.Detalhes := mmDetalhesProblema.Text;
    aProblema.Solucao := ms;

    if FEdicaoProblema then
    begin
      aProblema.Codigo := StrToInt(edtCodProblema.Text);

      FControllerProblema.UpdateProblema(aProblema);
    end
    else
    begin
      FControllerProblema.InsertProblema(aProblema);
    end;
  finally
    aProblema.Free;
    ms.Free;
  end;

  CarregaGridProblemas;

  InverteCamposProblemas;
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

procedure TformPrincipal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F3 then
    if btnNovoProblema.Enabled then
      if pnlProblemas.Enabled then
        EventoCadastrarProblema;

  if Key = VK_F4 then
    if btnNovoProblema.Enabled = false then
      if pnlProblemas.Enabled then
        EventoSalvarProblema;
end;

procedure TformPrincipal.FormShow(Sender: TObject);
begin
  edtPesqModulo.SetFocus;

  cardPanelProblemas.ActiveCard := pnlCadastroProblema;

  PreencheCbxModulos;

  pnlProblemas.Enabled := True;

  cbNameFontSolucao.items := Screen.fonts;
  cbNameFontSolucao.ItemIndex := 28;
end;

procedure TformPrincipal.gridModulosCellClick(Column: TColumn);
begin
  CarregaGridProblemas;
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

  pnlProblemas.Enabled := not pnlProblemas.Enabled;
  pnlBodyProblemas.Enabled := not pnlBodyProblemas.Enabled;
end;

procedure TformPrincipal.InverteBotoesCrudProblemas;
begin
  btnNovoProblema.Enabled := not btnNovoProblema.Enabled;
  btnSalvarProblema.Enabled := not btnSalvarProblema.Enabled;
  btnEditarProblema.Enabled := not btnEditarProblema.Enabled;
  btnExcluirProblema.Enabled := not btnExcluirProblema.Enabled;
  btnCancelarProblema.Enabled := not btnCancelarProblema.Enabled;

  pnlBodyModulos.Enabled := not pnlBodyModulos.Enabled;
end;

procedure TformPrincipal.InverteCamposProblemas;
begin
  edtTituloProblema.ReadOnly := not edtTituloProblema.ReadOnly;
  edtChamadoProblema.ReadOnly := not edtChamadoProblema.ReadOnly;
  cbModulo.Enabled := not cbModulo.Enabled;
  mmDetalhesProblema.ReadOnly := not mmDetalhesProblema.ReadOnly;
  mmSolucaoProblema.ReadOnly := not mmSolucaoProblema.ReadOnly;
end;

procedure TformPrincipal.mmSolucaoProblemaEnter(Sender: TObject);
begin
  mmSolucaoProblema.SelStart := Length(mmSolucaoProblema.Text);
  mmSolucaoProblema.SelAttributes.Size := StrToint(cbSizeFontSolucao.Text);
end;

procedure TformPrincipal.mmSolucaoProblemaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_TAB then
    Showmessage('sim');
end;

procedure TformPrincipal.PreencheCbxModulos;
begin
  var
  aNomeModulos := FControllerModulo.BuscaTabelaModulos.DataSet;

  cbModulo.Clear;

  while not aNomeModulos.Eof do
  begin
    cbModulo.Items.Add(aNomeModulos.FieldByName('nome').Value);
    aNomeModulos.Next;
  end;
end;

procedure TformPrincipal.rdbtnFiltroPesqProblemaClick(Sender: TObject);
begin
  CarregaGridProblemas;
end;

procedure TformPrincipal.SpeedButton2Click(Sender: TObject);
begin
  var aFormImagensProblema : TFormImagensProblema := TformImagensProblema.Create(nil);

  try
    aFormImagensProblema.ShowModal;
  finally
    aFormImagensProblema.Free;
  end;
end;

procedure TformPrincipal.btnCancelarModuloMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  InverteBotoesCrudModulos;

  edtNomeModulo.Text := gridModulos.Columns[0].Field.Value;
end;

procedure TformPrincipal.btnCancelarProblemaMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  InverteBotoesCrudProblemas;
end;

procedure TformPrincipal.btnEditarModuloMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  InverteBotoesCrudModulos;

  FEdicaoModulo := True;
end;

procedure TformPrincipal.btnEditarProblemaClick(Sender: TObject);
begin
  FEdicaoProblema := True;

  InverteBotoesCrudProblemas;
  InverteCamposProblemas;
end;

procedure TformPrincipal.btnExcluirProblemaClick(Sender: TObject);
begin
  var aProblema: TProblema := TProblema.Create;

  try
    if Application.MessageBox('Deseja excluir este registro?', 'Excluir problema',
    + MB_ICONQUESTION + MB_YESNO) = MrYes then
    begin
      aProblema.Codigo := StrToInt(edtCodProblema.Text);
      FControllerProblema.DeleteProblema(aProblema);
      CarregaGridProblemas;
      CarregaDadosProblemas;
    end;
  finally
    aProblema.Free;
  end;
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
  EventoCadastrarProblema;
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
  EventoSalvarProblema;
end;

procedure TformPrincipal.cardPanelProblemasExit(Sender: TObject);
begin
  if not btnNovoProblema.Enabled then
  begin
    MessageBox(0, PChar('Salve ou cancele antes de continuar!'), 'Cadastro de problemas',
      MB_ICONWARNING or MB_OK);
    pnlProblemas.SetFocus;
  end;
end;

procedure TformPrincipal.CarregaDadosProblemas;
begin
  var aNomeProblema: String;
  var aProblema: TDataSet;
  var cont: Integer := 0;
  var ms: TStream;

  if gridProblemas.DataSource.DataSet.RecordCount > 0 then
  begin
    aNomeProblema := gridProblemas.Columns[0].Field.Value;
    aProblema := FControllerProblema.CarregaDadosProblema(aNomeProblema).DataSet;

   //passa por cada item do cbx e identifica com o modulo correspondente no cadastro
    while cbModulo.text <> aProblema.FieldByName('modulo').Value do
    begin
      cbModulo.ItemIndex := cont;
      cont := cont + 1;
    end;

    edtCodProblema.Text := IntToStr(aProblema.FieldByName('cod_prob').Value);
    edtTituloProblema.Text := aProblema.FieldByName('titulo').Value;
    edtChamadoProblema.Text := aProblema.FieldByName('chamado').Value;
    mmDetalhesProblema.Text := aProblema.FieldByName('detalhes').Value;
    ms := aProblema.CreateBlobStream(aProblema.FieldByName('solucao'), bmread);
    mmSolucaoProblema.Lines.LoadFromStream(ms);
    edtDataProblema.Text := aProblema.FieldByName('datacr').Value;

    ms.Free;
  end;
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

procedure TformPrincipal.CarregaGridProblemas;
begin
  var
    aNomeModulo: String := gridModulos.Columns[0].Field.Value;

  if rdbtnFiltroPesqProblema.ItemIndex = 0 then
  begin
    pnlBodyModulos.Visible := False;

    gridProblemas.DataSource := FControllerProblema.BuscaTabelaProblemas;
  end
  else if rdbtnFiltroPesqProblema.ItemIndex = 1 then
  begin
    pnlBodyModulos.Visible := True;

    gridProblemas.DataSource := FControllerProblema.BuscaTabelaProblemasPorModulo
    (aNomeModulo);
    edtNomeModulo.Text := aNomeModulo;;
  end;
end;

procedure TformPrincipal.cbSizeFontSolucaoChange(Sender: TObject);
begin
  mmSolucaoProblema.SetFocus;
end;

end.
