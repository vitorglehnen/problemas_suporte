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
    btnNovoModulo: TSpeedButton;
    btnEditarProblema: TSpeedButton;
    pnlImagensProblema: TCard;
    pnlProblemas: TPanel;
    pnlBodyModuloProblema: TPanel;
    btnImagensProblema: TSpeedButton;
    pnlModuloProblema: TPanel;
    lblModuloProblema: TLabel;
    cbModulo: TComboBox;
    pnlBodySolucaoProblema: TPanel;
    pnlSolucaoProblema: TPanel;
    mmSolucaoProblema: TRichEdit;
    pnlTopProblema: TPanel;
    pnlBodyDetalhesProblema: TPanel;
    pnlDetalhesProblema: TPanel;
    lblDetalhesProblema: TLabel;
    edtDataProblema: TMaskEdit;
    lblDataProblema: TLabel;
    edtChamadoProblema: TEdit;
    lblChamadoProblema: TLabel;
    lblCodProblema: TLabel;
    edtCodProblema: TEdit;
    lblTituloProblema: TLabel;
    edtTituloProblema: TEdit;
    lblSolucaoProblema: TLabel;
    pnlTopSolucaoProblema: TPanel;
    cbNameFontSolucao: TComboBox;
    cbSizeFontSolucao: TComboBox;
    Panel1: TPanel;
    cbNameFontDetalhes: TComboBox;
    cbSizeFontDetalhes: TComboBox;
    mmDetalhesProblema: TRichEdit;
    ActionToolBar2: TActionToolBar;
    chkItalicoDetalhes: TCheckBox;
    chkNegritoDetalhes: TCheckBox;
    chkItalicoSolucao: TCheckBox;
    chkNegritoSolucao: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure gridModulosCellClick(Column: TColumn);
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

  private
    { Private declarations }
    FFormImagensProblema: TformImagensProblema;
    FControllerModulo: TControllerModulo;
    FControllerProblema: TControllerProblema;
    FEdicaoProblema: Boolean;
    FListaImagens: TStringList;

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
  uModulo, uImagemProblema;

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
  var aProblema: TProblema := TProblema.Create;
  var msDetalhes: TMemoryStream := TMemoryStream.Create;
  var msSolucao: TMemoryStream := TMemoryStream.Create;
  var aImagemProblema: TImagemProblema := TImagemProblema.Create;
  var aImagem: String;
  var aContSequencia: Integer := 0;

  InverteBotoesCrudProblemas;

  try
    mmDetalhesProblema.Lines.SaveToStream(msDetalhes);
    mmSolucaoProblema.Lines.SaveToStream(msSolucao);
    aProblema.Titulo := edtTituloProblema.Text;
    aProblema.Modulo := cbModulo.Text;
    aProblema.Chamado := edtChamadoProblema.Text;
    aProblema.Detalhes := msDetalhes;
    aProblema.Solucao := msSolucao;

    if FEdicaoProblema then
    begin
      aProblema.Codigo := StrToInt(edtCodProblema.Text);

      FControllerProblema.UpdateProblema(aProblema);
    end
    else
    begin
      FControllerProblema.InsertProblema(aProblema);
    end;

    if Assigned(FListaImagens) then
    begin
      while (aContSequencia < FListaImagens.Count) and (FListaImagens.Count > 0) do
      begin
        aImagemProblema.Sequencia := aContSequencia + 1;
        aImagemProblema.Imagem := FListaImagens[aContSequencia];

        FControllerProblema.InsertImagem(aImagemProblema);
        aContSequencia := aContSequencia + 1;
      end;
    end;

  finally
    aProblema.Free;
    msDetalhes.Free;
    msSolucao.Free;
    aImagemProblema.Free;

    if Assigned(FFormImagensProblema) then
    begin
      FFormImagensProblema.free;
    end;
  end;

  InverteCamposProblemas;
end;

procedure TformPrincipal.FormCreate(Sender: TObject);
begin
  FControllerProblema := TControllerProblema.Create;
  FControllerModulo := TControllerModulo.Create;

  CarregaGridModulos;
  CarregaGridProblemas;
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
    if btnNovoProblema.Enabled = False then
      if pnlProblemas.Enabled then
        EventoSalvarProblema;
end;

procedure TformPrincipal.FormShow(Sender: TObject);
begin
  edtPesqModulo.SetFocus;

  cardPanelProblemas.ActiveCard := pnlCadastroProblema;

  lblTotalDeProblemas.Caption := 'Total de problemas: ' + inttostr(FControllerProblema.BuscaTabelaProblemas.DataSet.RecordCount);

  PreencheCbxModulos;

  pnlProblemas.Enabled := True;
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
  btnImagensProblema.Enabled := not btnImagensProblema.Enabled;
  cbNameFontDetalhes.Enabled := not cbNameFontDetalhes.Enabled;
  cbNameFontSolucao.Enabled := not cbNameFontSolucao.Enabled;
  cbSizeFontDetalhes.Enabled := not cbSizeFontDetalhes.Enabled;
  cbSizeFontSolucao.Enabled := not cbSizeFontSolucao.Enabled;
  chkItalicoDetalhes.Enabled := not chkItalicoDetalhes.Enabled;
  chkNegritoDetalhes.Enabled := not chkNegritoDetalhes.Enabled;
  chkItalicoSolucao.Enabled := not chkItalicoSolucao.Enabled;
  chkNegritoSolucao.Enabled := not chkNegritoSolucao.Enabled;
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
  var
  aNomeModulos := FControllerModulo.BuscaTabelaModulos.DataSet;

  cbModulo.Clear;

  while not aNomeModulos.Eof do
  begin
    cbModulo.items.Add(aNomeModulos.FieldByName('nome').Value);
    aNomeModulos.Next;
  end;
end;

procedure TformPrincipal.rdbtnFiltroPesqProblemaClick(Sender: TObject);
begin
  CarregaGridProblemas;
end;

procedure TformPrincipal.btnImagensProblemaClick(Sender: TObject);
begin
  var aCaminhoImagem: String;

  if not Assigned(FFormImagensProblema) then
  begin
    FFormImagensProblema := TformImagensProblema.Create(nil);
    //FFormImagensProblema.RecebeListaImagens(FListaImagens);
  end;

  FFormImagensProblema.ShowModal;
  FListaImagens := FFormImagensProblema.FListaImagens;
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
end;

procedure TformPrincipal.btnEditarModuloMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  InverteBotoesCrudModulos;
end;

procedure TformPrincipal.btnEditarProblemaClick(Sender: TObject);
begin
  FEdicaoProblema := True;

  InverteBotoesCrudProblemas;
  InverteCamposProblemas;
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
  finally
    aProblema.Free;
  end;
end;

procedure TformPrincipal.btnNovoModuloMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  //InverteBotoesCrudModulos;

  with gridModulos do
  begin
    DataSource.DataSet.Insert;
    SetFocus;
  end;
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

  if gridProblemas.DataSource.DataSet.RecordCount > 0 then
  begin
    aNomeProblema := gridProblemas.Columns[0].Field.Value;
    aProblema := FControllerProblema.CarregaDadosProblema
      (aNomeProblema).DataSet;

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

    msDetalhes.Free;
    msSolucao.Free;
  end;
end;

procedure TformPrincipal.CarregaGridModulos;
begin
  var
    aNomeModulo: String;

  if FControllerModulo.BuscaTabelaModulos.DataSet.RecordCount > 0 then
  begin
    gridModulos.DataSource := FControllerModulo.BuscaTabelaModulos;
    gridModulos.DataSource.DataSet.First;
    aNomeModulo := gridModulos.Columns[0].Field.Value;
  end;
end;

procedure TformPrincipal.CarregaGridProblemas;
begin
  var
    aNomeModulo: String := gridModulos.columns[0].Field.value;

  if rdbtnFiltroPesqProblema.ItemIndex = 0 then
  begin
    pnlBodyModulos.Visible := False;

    gridProblemas.DataSource := FControllerProblema.BuscaTabelaProblemas;
  end
  else if rdbtnFiltroPesqProblema.ItemIndex = 1 then
  begin
    pnlBodyModulos.Visible := True;

    gridProblemas.DataSource :=
      FControllerProblema.BuscaTabelaProblemasPorModulo(aNomeModulo);
  end;
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

end.
