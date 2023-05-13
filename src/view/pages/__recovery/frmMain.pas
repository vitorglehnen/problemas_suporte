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
  uProblema,
  Vcl.ExtActns,
  Vcl.StdActns,
  System.Actions,
  Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ActnMan,
  Vcl.ToolWin,
  Vcl.ActnCtrls,
  Vcl.BandActn,
  frmImagensProblema;

type
  TformPrincipal = class(TForm)
    gridModulos: TDBGrid;
    btnNovoProblema: TSpeedButton;
    btnSalvarProblema: TSpeedButton;
    btnExcluirProblema: TSpeedButton;
    btnCancelarProblema: TSpeedButton;
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
    btnNovoModulo: TSpeedButton;
    btnEditarProblema: TSpeedButton;
    pnlEscolhaUmRegistro: TPanel;
    pnlProblemas: TPanel;
    pnlBodyModuloProblema: TPanel;
    btnImagensProblema: TSpeedButton;
    pnlModuloProblema: TPanel;
    lblModuloProblema: TLabel;
    cbModulo: TComboBox;
    pnlBodySolucaoProblema: TPanel;
    pnlSolucaoProblema: TPanel;
    lblSolucaoProblema: TLabel;
    mmSolucaoProblema: TRichEdit;
    pnlTopSolucaoProblema: TPanel;
    cbNameFontSolucao: TComboBox;
    cbSizeFontSolucao: TComboBox;
    ActionToolBar2: TActionToolBar;
    chkItalicoSolucao: TCheckBox;
    chkNegritoSolucao: TCheckBox;
    pnlTopProblema: TPanel;
    lblDataProblema: TLabel;
    lblChamadoProblema: TLabel;
    lblCodProblema: TLabel;
    lblTituloProblema: TLabel;
    edtDataProblema: TMaskEdit;
    edtChamadoProblema: TEdit;
    edtCodProblema: TEdit;
    edtTituloProblema: TEdit;
    pnlBodyDetalhesProblema: TPanel;
    pnlDetalhesProblema: TPanel;
    lblDetalhesProblema: TLabel;
    Panel2: TPanel;
    cbNameFontDetalhes: TComboBox;
    cbSizeFontDetalhes: TComboBox;
    chkItalicoDetalhes: TCheckBox;
    chkNegritoDetalhes: TCheckBox;
    mmDetalhesProblema: TRichEdit;
    Panel1: TPanel;
    btnExcluirModulo: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure gridModulosCellClick(Column: TColumn);
    procedure btnCancelarModuloMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnSalvarModuloMouseDown(Sender: TObject; Button: TMouseButton;
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
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnImagensProblemaClick(Sender: TObject);
    procedure mmSolucaoProblemaEnter(Sender: TObject);
    procedure cbSizeFontSolucaoChange(Sender: TObject);
    procedure mmDetalhesProblemaEnter(Sender: TObject);
    procedure cbNameFontDetalhesChange(Sender: TObject);
    procedure cbSizeFontDetalhesChange(Sender: TObject);
    procedure chkNegritoDetalhesClick(Sender: TObject);
    procedure chkItalicoDetalhesClick(Sender: TObject);
    procedure chkNegritoSolucaoClick(Sender: TObject);
    procedure chkItalicoSolucaoClick(Sender: TObject);
    procedure btnNovoModuloMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure gridModulosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnExcluirModuloClick(Sender: TObject);

  private
    { Private declarations }
    FFormImagensProblema: TformImagensProblema;
    FControllerModulo: TControllerModulo;
    FControllerProblema: TControllerProblema;

    procedure EventoSalvarProblema;
    procedure EventoCadastrarProblema;
    procedure CarregaGridProblemas;
    procedure CarregaDadosProblemas;
    procedure CarregaGridModulos;
    procedure PreencheCbxModulos;
    procedure InverteBotoesCrudProblemas;
    procedure InverteCamposProblemas;
    procedure SalvarAlteracaoModulo;
  public
    { Public declarations }
    FEdicaoProblema: Boolean;
  end;

var
  formPrincipal: TformPrincipal;

implementation

{$R *.dfm}

uses
  uModulo, uImagemProblema;

procedure TformPrincipal.EventoSalvarProblema;
begin
  var aProblema: TProblema := TProblema.Create;
  var msDetalhes: TMemoryStream := TMemoryStream.Create;
  var msSolucao: TMemoryStream := TMemoryStream.Create;

  InverteBotoesCrudProblemas;

  try
    mmDetalhesProblema.Lines.SaveToStream(msDetalhes);
    mmSolucaoProblema.Lines.SaveToStream(msSolucao);

    aProblema.Codigo := StrToInt(edtCodProblema.Text);
    aProblema.Titulo := edtTituloProblema.Text;
    aProblema.Modulo := cbModulo.Text;
    aProblema.Chamado := edtChamadoProblema.Text;
    aProblema.Detalhes := msDetalhes;
    aProblema.Solucao := msSolucao;

    if FEdicaoProblema then
      FControllerProblema.UpdateProblema(aProblema)
    else
      FControllerProblema.InsertProblema(aProblema);

  finally
    aProblema.Free;
    msDetalhes.Free;
    msSolucao.Free;
  end;

  FEdicaoProblema := False;
  btnImagensProblema.Enabled := True;

  InverteCamposProblemas;
end;

procedure TformPrincipal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F3 then
    if btnNovoProblema.Enabled then
      if pnlProblemas.Enabled then
        EventoCadastrarProblema;

  if Key = VK_F4 then
    if btnNovoProblema.Enabled = False then
      if pnlProblemas.Enabled then
        EventoSalvarProblema;
end;

procedure TformPrincipal.FormShow(Sender: TObject);
begin
  edtPesqModulo.SetFocus;
  cardPanelProblemas.ActiveCard := pnlCadastroProblema;
  lblTotalDeProblemas.Caption := lblTotalDeProblemas.Caption + inttostr(FControllerProblema.BuscaTabelaProblemas.DataSet.RecordCount);
  pnlProblemas.Enabled := True;
end;

procedure TformPrincipal.mmDetalhesProblemaEnter(Sender: TObject);
begin
  with mmDetalhesProblema do
  begin
    SelAttributes.Style := [];
    SelStart := Length(mmDetalhesProblema.Text);
    SelAttributes.Size := StrToInt(cbSizeFontDetalhes.Text);
    SelAttributes.Name := cbNameFontDetalhes.Text;

    if chkNegritoDetalhes.Checked then SelAttributes.Style := [fsBold];
    if chkItalicoDetalhes.Checked then SelAttributes.Style := [fsItalic];

    if chkNegritoDetalhes.Checked and chkItalicoDetalhes.Checked then
      SelAttributes.Style := [fsItalic, fsBold];
  end;
end;

procedure TformPrincipal.mmSolucaoProblemaEnter(Sender: TObject);
begin
  with mmSolucaoProblema do
  begin
    SelAttributes.Style := [];
    SelStart := Length(mmSolucaoProblema.Text);
    SelAttributes.Size := StrToInt(cbSizeFontSolucao.Text);
    SelAttributes.Name := cbNameFontSolucao.Text;

    if chkNegritoSolucao.Checked then SelAttributes.Style := [fsBold];
    if chkItalicoSolucao.Checked then SelAttributes.Style := [fsItalic];

    if chkNegritoSolucao.Checked and chkItalicoSolucao.Checked then
      SelAttributes.Style := [fsItalic, fsBold];
  end;
end;

procedure TformPrincipal.PreencheCbxModulos;
begin
  var aListaModulos : TStringList;
  var aCont : Integer := 0;

  try
    aListaModulos := FControllerModulo.BuscaModulos;
    cbModulo.Clear;

    while aCont < aListaModulos.Count do
    begin
      cbModulo.items.Add(aListaModulos[aCont]);
      inc(aCont);
    end;
  finally
    aListaModulos.Free;
  end;
end;

procedure TformPrincipal.rdbtnFiltroPesqProblemaClick(Sender: TObject);
begin
  CarregaGridProblemas;
end;

procedure TformPrincipal.SalvarAlteracaoModulo;
begin
  ShowMessage('sim');
end;

procedure TformPrincipal.btnImagensProblemaClick(Sender: TObject);
begin
  var aCaminhoImagem: String;
  var aContador: Integer := 0;

  FFormImagensProblema := TformImagensProblema.Create(nil);

  try
    FFormImagensProblema.ShowModal;
  finally
    FFormImagensProblema.Free;
  end;
end;

procedure TformPrincipal.btnExcluirModuloClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja excluir este registro?',
      'Excluir módulo', +MB_ICONQUESTION + MB_YESNO) = MrYes then
  begin
    var aModulo : TModulo := TModulo.Create;

    try
      aModulo.Nome := gridModulos.Columns[0].Field.Value;
      FControllerModulo.DeleteModulo(aModulo)
    finally
      aModulo.Free;
      CarregaGridModulos;
    end;
  end;
end;

procedure TformPrincipal.btnExcluirProblemaClick(Sender: TObject);
begin
  var
    aProblema: TProblema := TProblema.Create;

  try
    if Application.MessageBox('Deseja excluir este registro?',
      'Excluir problema', +MB_ICONQUESTION + MB_YESNO) = MrYes then
    begin
      aProblema.Codigo := StrToInt(edtCodProblema.Text);
      FControllerProblema.DeleteProblema(aProblema);
      CarregaGridProblemas;
      CarregaDadosProblemas;
    end;

    if gridProblemas.DataSource.DataSet.RecordCount < 1 then
      pnlProblemas.Visible := False;
  finally
    aProblema.Free;
  end;
end;

procedure TformPrincipal.btnNovoModuloMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  gridModulos.DataSource.DataSet.Append;
  gridModulos.SetFocus;
end;

procedure TformPrincipal.btnNovoProblemaMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  EventoCadastrarProblema;
end;

procedure TformPrincipal.btnSalvarModuloMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  CarregaGridModulos;
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
    MessageBox(0, PChar('Salve ou cancele antes de continuar!'),
      'Cadastro de problemas', MB_ICONWARNING or MB_OK);
    pnlProblemas.SetFocus;
  end;
end;

procedure TformPrincipal.CarregaDadosProblemas;
var
   aNomeProblema: String;
   aProblema: TDataSet;
   cont: Integer;
   msDetalhes: TStream;
   msSolucao: TStream;
begin
  cont := 0;

  if Assigned(gridProblemas.DataSource) and (gridProblemas.DataSource.DataSet.RecordCount > 0) then
  begin
    PreencheCbxModulos;

    pnlProblemas.Visible := True;
    aNomeProblema := gridProblemas.Columns[0].Field.Value;
    aProblema := FControllerProblema.CarregaDadosProblema
      (aNomeProblema).DataSet;

    try
      while cbModulo.Text <> aProblema.FieldByName('modulo').Value do
      begin
        cbModulo.ItemIndex := cont;
        cont := cont + 1;
      end;

      edtCodProblema.Text := IntToStr(aProblema.FieldByName('cod_prob').Value);
      edtTituloProblema.Text := aProblema.FieldByName('titulo').Value;
      edtChamadoProblema.Text := aProblema.FieldByName('chamado').Value;

      msDetalhes:= aProblema.CreateBlobStream(aProblema.FieldByName('detalhes'), bmread);
      mmDetalhesProblema.Lines.LoadFromStream(msDetalhes);
      msSolucao := aProblema.CreateBlobStream(aProblema.FieldByName('solucao'), bmread);
      mmSolucaoProblema.Lines.LoadFromStream(msSolucao);

      edtDataProblema.Text := aProblema.FieldByName('datacr').Value;
    finally
      msDetalhes.Free;
      msSolucao.Free;
    end;
  end;
end;

procedure TformPrincipal.CarregaGridModulos;
begin
  var aNomeModulo: String;
  var aTabelaModulos: TDataSource := FControllerModulo.BuscaTabelaModulos;

  if aTabelaModulos.DataSet.RecordCount > 0 then
  begin
    gridModulos.DataSource := aTabelaModulos;
    gridModulos.DataSource.DataSet.First;
    aNomeModulo := gridModulos.Columns[0].Field.Value;
  end;
end;

procedure TformPrincipal.CarregaGridProblemas;
begin
  var
    aNomeModulo: String := gridModulos.columns[0].Field.value;

  case rdbtnFiltroPesqProblema.ItemIndex of
    0:
    begin
      pnlBodyModulos.Visible := False;
      gridProblemas.DataSource := FControllerProblema.BuscaTabelaProblemas;
    end;
    1:
    begin
      pnlBodyModulos.Visible := True;

      gridProblemas.DataSource :=
      FControllerProblema.BuscaTabelaProblemasPorModulo(aNomeModulo);
    end;
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

procedure TformPrincipal.cbNameFontDetalhesChange(Sender: TObject);
begin
  mmDetalhesProblema.SetFocus;
end;

procedure TformPrincipal.cbSizeFontDetalhesChange(Sender: TObject);
begin
  mmDetalhesProblema.SetFocus;
end;

procedure TformPrincipal.cbSizeFontSolucaoChange(Sender: TObject);
begin
  mmSolucaoProblema.SetFocus;
end;

procedure TformPrincipal.chkItalicoDetalhesClick(Sender: TObject);
begin
  mmDetalhesProblema.SetFocus;
end;

procedure TformPrincipal.chkItalicoSolucaoClick(Sender: TObject);
begin
  mmSolucaoProblema.SetFocus;
end;

procedure TformPrincipal.chkNegritoDetalhesClick(Sender: TObject);
begin
  mmDetalhesProblema.SetFocus;
end;

procedure TformPrincipal.chkNegritoSolucaoClick(Sender: TObject);
begin
  mmSolucaoProblema.SetFocus;
end;

procedure TformPrincipal.btnCancelarModuloMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  gridModulos.SetFocus;
end;

procedure TformPrincipal.btnCancelarProblemaMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  InverteBotoesCrudProblemas;
  InverteCamposProblemas;

  CarregaDadosProblemas;

  if gridProblemas.DataSource.DataSet.RecordCount < 1 then
    pnlProblemas.Visible := False;
end;

procedure TformPrincipal.btnEditarProblemaClick(Sender: TObject);
begin
  FEdicaoProblema := True;

  InverteBotoesCrudProblemas;
  InverteCamposProblemas;
end;

procedure TformPrincipal.gridModulosCellClick(Column: TColumn);
begin
  CarregaGridProblemas;
  CarregaDadosProblemas;
end;

procedure TformPrincipal.gridModulosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    gridModulos.DataSource.DataSet.First;
    pnlPrincipal.SetFocus;
  end;
end;

procedure TformPrincipal.gridProblemasCellClick(Column: TColumn);
begin
  CarregaDadosProblemas;
end;

procedure TformPrincipal.InverteBotoesCrudProblemas;
begin
  btnNovoProblema.Enabled := not btnNovoProblema.Enabled;
  btnSalvarProblema.Enabled := not btnSalvarProblema.Enabled;
  btnEditarProblema.Enabled := not btnEditarProblema.Enabled;
  btnExcluirProblema.Enabled := not btnExcluirProblema.Enabled;
  btnCancelarProblema.Enabled := not btnCancelarProblema.Enabled;

  pnlTopSolucaoProblema.Enabled := not pnlTopSolucaoProblema.Enabled;
  pnlBodyModulos.Enabled := not pnlBodyModulos.Enabled;
end;

procedure TformPrincipal.InverteCamposProblemas;
begin
  edtTituloProblema.ReadOnly := not edtTituloProblema.ReadOnly;
  edtChamadoProblema.ReadOnly := not edtChamadoProblema.ReadOnly;
  cbModulo.Enabled := not cbModulo.Enabled;
  mmDetalhesProblema.ReadOnly := not mmDetalhesProblema.ReadOnly;
  mmSolucaoProblema.ReadOnly := not mmSolucaoProblema.ReadOnly;
  cbNameFontDetalhes.Enabled := not cbNameFontDetalhes.Enabled;
  cbNameFontSolucao.Enabled := not cbNameFontSolucao.Enabled;
  cbSizeFontDetalhes.Enabled := not cbSizeFontDetalhes.Enabled;
  cbSizeFontSolucao.Enabled := not cbSizeFontSolucao.Enabled;
  chkItalicoDetalhes.Enabled := not chkItalicoDetalhes.Enabled;
  chkNegritoDetalhes.Enabled := not chkNegritoDetalhes.Enabled;
  chkItalicoSolucao.Enabled := not chkItalicoSolucao.Enabled;
  chkNegritoSolucao.Enabled := not chkNegritoSolucao.Enabled;
end;

procedure TformPrincipal.EventoCadastrarProblema;
begin
  pnlProblemas.Visible := True;
  FEdicaoProblema := False;

  InverteCamposProblemas;
  InverteBotoesCrudProblemas;

  edtTituloProblema.SetFocus;

  edtTituloProblema.Clear;
  edtChamadoProblema.Clear;
  edtDataProblema.Text := DateToStr(date);
  cbModulo.ItemIndex := -1;
  mmSolucaoProblema.Clear;
  mmDetalhesProblema.Clear;
  btnImagensProblema.Enabled := False;

  PreencheCbxModulos;
end;

end.
