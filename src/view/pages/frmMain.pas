unit frmMain;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.Variants,
  System.Classes,
  System.Actions,
  System.Generics.Collections,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.ExtCtrls,
  Vcl.StdCtrls,
  Vcl.DBCtrls,
  Vcl.Buttons,
  Vcl.Mask,
  Vcl.WinXPanels,
  Vcl.FileCtrl,
  Vcl.Clipbrd,
  Vcl.ExtActns,
  Vcl.StdActns,
  Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls,
  Vcl.ActnMan,
  Vcl.ToolWin,
  Vcl.ActnCtrls,
  Vcl.BandActn,
  Vcl.ComCtrls,
  Data.DB,
  jpeg,
  pngimage,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Param,
  FireDAC.Stan.Error,
  FireDAC.DatS,
  FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Stan.Async,
  FireDAC.DApt,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  FireDAC.UI.Intf,
  FireDAC.Stan.Def,
  FireDAC.Stan.Pool,
  FireDAC.Phys,
  FireDAC.VCLUI.Wait,
  uControllerModulo,
  uControllerProblema,
  uProblema,
  frmImagensProblema,
  frmRichEditTelaCheia,
  uUsuario,
  System.IniFiles,
  Vcl.ActnMenus,
  Vcl.Menus,
  System.Threading,
  ShellAPI,
  SysUtils, uControllerUtils;

type
  TformPrincipal = class(TForm)
    gridModulos: TDBGrid;
    lblTituloProblemas: TLabel;
    lblTituloModulo: TLabel;
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
    dsModulos: TDataSource;
    dsProblemas: TDataSource;
    btnExcluirProblema: TSpeedButton;
    btnCancelarProblema: TSpeedButton;
    btnSalvarProblema: TSpeedButton;
    btnNovoProblema: TSpeedButton;
    btnExcluirModulo: TSpeedButton;
    btnNovoModulo: TSpeedButton;
    btnAtualizarGridProblemas: TBitBtn;
    edtNomeModulo: TDBEdit;
    btnCancelarModulo: TSpeedButton;
    btnSalvarModulo: TSpeedButton;
    statusBarBottom: TStatusBar;
    btnSalvaIndiceFiltroProblema: TSpeedButton;
    menuOpcoes: TMainMenu;
    N1: TMenuItem;
    pnlProblemas: TPanel;
    pnlBodyModuloProblema: TPanel;
    btnImagensProblema: TSpeedButton;
    pnlModuloProblema: TPanel;
    lblModuloProblema: TLabel;
    cbModulo: TComboBox;
    edtCodModulo: TDBEdit;
    chkSomenteSolucao: TDBCheckBox;
    pnlBodySolucaoProblema: TPanel;
    pnlSolucaoProblema: TPanel;
    lblSolucaoProblema: TLabel;
    mmSolucaoProblema: TDBRichEdit;
    pnlTopProblema: TPanel;
    lblDataProblema: TLabel;
    lblChamadoProblema: TLabel;
    lblTituloProblema: TLabel;
    edtTituloProblema: TDBEdit;
    edtChamadoProblema: TDBEdit;
    dtProblema: TDateTimePicker;
    pnlBodyDetalhesProblema: TPanel;
    pnlDetalhesProblema: TPanel;
    lblDetalhesProblema: TLabel;
    mmDetalhesProblema: TDBRichEdit;
    lblNomeModulo: TLabel;
    imgLogo: TImage;
    btnConsultarProblema: TButton;
    btnConsultarModulos: TButton;
    edtCriadoPor: TDBEdit;
    lblCriadoPor: TLabel;

    procedure btnNovoModuloMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btnExcluirModuloClick(Sender: TObject);
    procedure gridModulosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure gridProblemasDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnSalvarModuloMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure gridModulosCellClick(Column: TColumn);
    procedure rdbtnFiltroPesqProblemaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnExcluirProblemaClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnImagensProblemaClick(Sender: TObject);
    procedure btnNovoProblemaClick(Sender: TObject);
    procedure btnSalvarProblemaClick(Sender: TObject);
    procedure btnCancelarProblemaClick(Sender: TObject);
    procedure btnNovoModuloClick(Sender: TObject);
    procedure cbModuloChange(Sender: TObject);
    procedure btnAtualizarGridProblemasClick(Sender: TObject);
    procedure btnSalvarModuloClick(Sender: TObject);
    procedure btnCancelarModuloClick(Sender: TObject);
    procedure mmDetalhesProblemaDblClick(Sender: TObject);
    procedure mmSolucaoProblemaDblClick(Sender: TObject);
    procedure chkSomenteSolucaoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtTituloProblemaMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure Preferncias1Click(Sender: TObject);
    procedure btnSalvaIndiceFiltroProblemaClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure cbFiltroPesqProblemaChange(Sender: TObject);
    procedure ConsultarClick(Sender: TObject);
    procedure btnConsultarProblemaClick(Sender: TObject);
    procedure btnConsultarModulosClick(Sender: TObject);
    procedure edtPesqModuloKeyPress(Sender: TObject; var Key: Char);
    procedure edtPesqProblemaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    FFormRichEditTelaCheia: TFormRichEditTelaCheia;
    FFormImagensProblema: TformImagensProblema;
    FControllerProblema: TControllerProblema;
    FControllerModulo: TControllerModulo;
    FControllerUtils: TControllerUtils;
    FUsuario: TUsuario;

    procedure CarregaPersonalizacaoUsuario;
    procedure SelecionaModuloCbProblema;
    procedure PersonalizaGridProblemas;
    procedure CarregaGridProblemas;
    procedure EsticaMemoProblemas;
    procedure InverteCrudProblema;
    procedure CarregaGridModulos;
    procedure PreencheCbxModulos;
    procedure InverteCrudModulo;
    procedure CancelarProblema;
    procedure ExcluirProblema;
    procedure SalvarProblema;
    procedure NovoProblema;

    procedure DsProblemasEventos;
    procedure DsModulosEventos;

    procedure DsProblemasAfterScroll(TDataSet: TDataSet);
    procedure DsProblemasAfterCancel(TDataSet: TDataSet);
    procedure DsProblemasAfterInsert(TDataSet: TDataSet);
    procedure DsProblemasBeforePost(TDataSet: TDataSet);
    procedure DsProblemasAfterEdit(TDataSet: TDataSet);
    procedure DsProblemasAfterPost(TDataSet: TDataSet);

    procedure DsModulosAfterInsert(TDataSet: TDataSet);
    procedure DsModulosAfterCancel(TDataSet: TDataSet);
    procedure DsModulosAfterDelete(TDataSet: TDataSet);
    procedure DsModulosAfterPost(TDataSet: TDataSet);
    procedure DsModulosAfterEdit(TDataSet: TDataSet);
  private
    FIniConexão: TIniFile;
  public
    { Public declarations }
    destructor Destroy; override;
  end;

var
  formPrincipal: TformPrincipal;

implementation

{$R *.dfm}

uses
  uModulo, uImagemProblema, frmPreferencias;

procedure TformPrincipal.FormCreate(Sender: TObject);
begin
  { Método construtor da classe }

  FControllerUtils := TControllerUtils.Create;
  FControllerProblema := TControllerProblema.Create;
  FControllerModulo := TControllerModulo.Create;
  FUsuario := TUsuario.Create;
  CarregaGridModulos;
  CarregaGridProblemas;
  DsProblemasEventos;
  DsModulosEventos;
end;

procedure TformPrincipal.FormShow(Sender: TObject);
begin
  { Mudança nos comportamentos dos componentes ao abrir o sistema }

  CarregaPersonalizacaoUsuario;
  PreencheCbxModulos;
  SelecionaModuloCbProblema;

   if cbFiltroPesqProblema.Text = 'Código' then edtPesqProblema.NumbersOnly := True else edtPesqProblema.NumbersOnly := False;
   if dsProblemas.DataSet.RecordCount > 0 then pnlProblemas.Enabled := True else pnlProblemas.Enabled := false;
end;

destructor TformPrincipal.Destroy;
begin
  { Método destrutor da classe }

  FControllerProblema.Free;
  FControllerModulo.Free;
  FControllerUtils.Free;
  FUsuario.Free;
  Application.Terminate;

  inherited;
end;

procedure TformPrincipal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  { Teclas de atalho para incluir, salvar, cancelar ou recarregar um problema }

  if Key = VK_F2 then
    if btnNovoProblema.Enabled then
      NovoProblema;
  if Key = VK_F3 then
    if btnSalvarProblema.Enabled then
      SalvarProblema;
  if Key = VK_F4 then
    if btnCancelarProblema.Enabled then
      dsProblemas.DataSet.Cancel;
  if Key = VK_F5 then
    if btnNovoProblema.Enabled then
      CarregaGridProblemas;
end;

procedure TformPrincipal.PersonalizaGridProblemas;
begin
  {   Esconde as colunas no grid de problemas, mantendo apenas a coluna do
    TITULO visível }

  var
    aCont: Integer;

  for aCont := 0 to gridProblemas.Columns.Count - 1 do
  begin
    if aCont <> 2 then
      gridProblemas.Columns[aCont].Visible := False
    else
      gridProblemas.Columns[aCont].Title.Font.Style := [fsBold];
  end;

  TDrawGrid(gridProblemas).ScrollBars := ssVertical;
end;

procedure TformPrincipal.PreencheCbxModulos;
var
    listaModulos: TStringList;
    modulo: string;
begin
  { Preenche o comboBox dos módulos com todos os módulos cadastrados }

  listaModulos := TStringList.Create;
  try
    listaModulos.Assign(FControllerModulo.BuscaModulos);
    cbModulo.Items.Assign(listaModulos);
  finally
    listaModulos.Free;
  end;
end;

procedure TformPrincipal.Preferncias1Click(Sender: TObject);
begin
  { Abre a tela de preferências do usuário }

  var
    aUsuario := TUsuario.Create();
  var
    FFormPreferencias := TFormPreferencias.Create(Self, aUsuario);

  try
    FFormPreferencias.ShowModal;
  finally
    FFormPreferencias.Free;
  end;
end;

procedure TformPrincipal.SalvarProblema;
begin
  { Valida se os dados do problemas estão corretos para conseguir salvar }

  var
    aProblema: TProblema := TProblema.Create;

  try
    aProblema.Titulo := edtTituloProblema.Text;
    aProblema.Modulo := edtCodModulo.Text;

    if not aProblema.ValidaDados then
      Application.MessageBox('Preencha os campos obrigatórios!',
        'Salvar Problema', +MB_ICONEXCLAMATION + MB_OK)
    else
    begin
      dsProblemas.DataSet.Post;
    end;
  finally
    aProblema.Free;
  end;
end;

procedure TformPrincipal.SelecionaModuloCbProblema;
begin
  {   Loop para selecionar o nome do módulo no combobox corresponde ao
    código do módulo }

  if dsProblemas.DataSet.RecordCount > 0 then
  begin
    cbModulo.ItemIndex := 0;
    while cbModulo.Text <> FControllerModulo.BuscaNomeModulo
      (StrToInt(edtCodModulo.Text)) do
    begin
      cbModulo.ItemIndex := cbModulo.ItemIndex + 1;
    end;
  end;
end;

procedure TformPrincipal.btnImagensProblemaClick(Sender: TObject);
begin
  { Abre a tela de visualização das imagens do problema }

  var
    aCaminhoImagem: String;

  FFormImagensProblema := TformImagensProblema.Create(nil, dsProblemas.DataSet.FieldByName('cod_prob').AsString, FUsuario);
  try
    FFormImagensProblema.ShowModal;
  finally
    FFormImagensProblema.Free;
  end;
end;

procedure TformPrincipal.btnExcluirModuloClick(Sender: TObject);
begin
  if dsModulos.DataSet.RecordCount > 0 then
    if Application.MessageBox('Deseja excluir este registro?', 'Excluir módulo',
    +MB_ICONQUESTION + MB_YESNO) = MrYes then
      try
        dsModulos.DataSet.Delete;
      except
        on E: EDatabaseError do
          MessageDlg('Não é permitido excluir módulos que possuem PROBLEMAS relacionados!', mtError, [mbOK], 0);
      end;
end;

procedure TformPrincipal.btnExcluirProblemaClick(Sender: TObject);
begin
  ExcluirProblema;
end;

procedure TformPrincipal.CancelarProblema;
begin
  dsProblemas.DataSet.Cancel;
end;

procedure TformPrincipal.CarregaGridModulos;
begin
  var
    aTabelaModulos: TDataSource := FControllerModulo.BuscaTabelaModulos
      (edtPesqModulo.Text);

  dsModulos.DataSet := aTabelaModulos.DataSet;
  dsModulos.DataSet.First;
end;

procedure TformPrincipal.CarregaGridProblemas;
begin
  var
    aNomeModulo: String;

  { Faz a validação para verificar se o dataset dos módulos não está vazio }
  if Assigned(dsModulos) and (dsModulos.DataSet.RecordCount > 0)
  then
    aNomeModulo := gridModulos.Columns[0].Field.Value
  else
    aNomeModulo := '';

  {   Dependendo do item que está marcado no radioButton dos filtros de pesquisa
    do problemas, faz um select correspondente, se for GERAL ou SOMENTE do
    módulo }
  case rdbtnFiltroPesqProblema.ItemIndex of
    0:
      begin
        pnlBodyModulos.Visible := False;
        dsProblemas.DataSet := FControllerProblema.BuscaTabelaProblemas.DataSet;
      end;
    1:
      begin
        pnlBodyModulos.Visible := True;
        dsProblemas.DataSet := FControllerProblema.BuscaTabelaProblemasPorModulo
          (aNomeModulo).DataSet;
      end;
  end;

  PersonalizaGridProblemas;
end;

procedure TformPrincipal.CarregaPersonalizacaoUsuario;
begin
  FUsuario := TUsuario.Create;

  cbFiltroPesqProblema.ItemIndex := FUsuario.GetIndFiltroConsultaProblema;
  statusBarBottom.Panels[0].Text := 'Usuário: ' + FUsuario.Nome;
  statusBarBottom.Panels[1].Text := 'Endereço IP: ' + FUsuario.EnderecoIp;
  rdbtnFiltroPesqProblema.ItemIndex := FUsuario.ConsultaGeral;
  pnlPrincipal.Color := StringToColor(FUsuario.Cor);
  edtCriadoPor.Color := StringToColor(FUsuario.Cor);
end;

procedure TformPrincipal.cbFiltroPesqProblemaChange(Sender: TObject);
begin
  if cbFiltroPesqProblema.Text = 'Código' then
  begin
    edtPesqProblema.NumbersOnly := True;
    edtPesqProblema.Text := '';
  end
  else
    edtPesqProblema.NumbersOnly := False;
end;

procedure TformPrincipal.cbModuloChange(Sender: TObject);
begin
  {   Verifica se ao trocar o item selecionado no comboBox do módulo dos
    problemas, se no campo do código do módulo, o código é correspondete ao
    módulo selecionado, se não for, busca o código correto }

  var
    aCodigoModulo: Integer := FControllerModulo.BuscaCodigoModulo
      (cbModulo.Text);

  if IntToStr(aCodigoModulo) <>
    IntToStr(dsProblemas.DataSet.FieldByName('cod_mod').AsInteger) then
  begin
    dsProblemas.DataSet.Edit;
    edtCodModulo.Text := IntToStr(aCodigoModulo);
  end;
end;

procedure TformPrincipal.chkSomenteSolucaoClick(Sender: TObject);
begin
  if chkSomenteSolucao.Checked then
      dsProblemas.DataSet.FieldByName('somentesolu').AsString := 'S'
    else
      dsProblemas.DataSet.FieldByName('somentesolu').AsString := 'N';

  EsticaMemoProblemas;
end;

procedure TformPrincipal.ConsultarClick(Sender: TObject);
begin
  CarregaGridModulos;
end;

procedure TformPrincipal.DsModulosAfterInsert(TDataSet: TDataSet);
begin
  InverteCrudModulo;
  edtNomeModulo.SetFocus;
end;

procedure TformPrincipal.DsModulosAfterPost(TDataSet: TDataSet);
begin
  pnlGridProblemas.Enabled := True;
  pnlGridModulos.Enabled := True;
  InverteCrudModulo;
end;

procedure TformPrincipal.DsModulosEventos;
begin
  dsModulos.DataSet.AfterInsert := DsModulosAfterInsert;
  dsModulos.DataSet.AfterCancel := DsModulosAfterCancel;
  dsModulos.DataSet.AfterDelete := DsModulosAfterDelete;
  dsModulos.DataSet.AfterEdit := DsModulosAfterEdit;
  dsModulos.DataSet.AfterPost := DsModulosAfterPost;
end;

procedure TformPrincipal.DsModulosAfterCancel(TDataSet: TDataSet);
begin
  pnlGridProblemas.Enabled := True;
  pnlGridModulos.Enabled := True;
  InverteCrudModulo;
end;

procedure TformPrincipal.DsModulosAfterDelete(TDataSet: TDataSet);
begin
  CarregaGridModulos;
end;

procedure TformPrincipal.DsModulosAfterEdit(TDataSet: TDataSet);
begin
  pnlGridProblemas.Enabled := False;
  pnlGridModulos.Enabled := False;
  InverteCrudModulo;
end;

procedure TformPrincipal.DsProblemasAfterCancel(TDataSet: TDataSet);
begin
  btnImagensProblema.Enabled := True;
  InverteCrudProblema;
end;

procedure TformPrincipal.DsProblemasAfterEdit(TDataSet: TDataSet);
begin
  InverteCrudProblema;
end;

procedure TformPrincipal.DsProblemasAfterInsert(TDataSet: TDataSet);
begin
  btnImagensProblema.Caption := 'Imagens (0)';
  pnlBodyDetalhesProblema.Visible := True;
  btnImagensProblema.Enabled := False;
  chkSomenteSolucao.Checked := False;
  edtTituloProblema.SetFocus;
  InverteCrudProblema;
  PreencheCbxModulos;

  dsProblemas.DataSet.FieldByName('cod_usu').AsInteger := FUsuario.Codigo;
  dsProblemas.DataSet.FieldByName('datacr').AsDateTime := Now;
end;

procedure TformPrincipal.DsProblemasAfterPost(TDataSet: TDataSet);
begin
  {   Após inserir o problema no banco de dados, seleciona ele nos grids para
    aparecer na tela do usuário }

  btnImagensProblema.Enabled := True;
  InverteCrudProblema;

  var aTitulo : String := dsProblemas.DataSet.FieldByName('titulo').AsString;

  dsModulos.DataSet.Locate('NOME', cbModulo.Text, [loCaseInsensitive, loPartialKey]);
  dsProblemas.DataSet.Locate('TITULO', aTitulo, [loCaseInsensitive, loPartialKey]);
  edtCriadoPor.Text := FUsuario.Nome;
end;

procedure TformPrincipal.DsProblemasAfterScroll(TDataSet: TDataSet);
begin
  {   Aqui é implementado a lógica após mudar de registro no grid de problemas,
    atualizando as informações na tela referente sobre o registro selecionado }

  var
    aListaImagens: TStringList;

  if dsProblemas.DataSet.RecordCount > 0 then
  begin
    try
      aListaImagens := FControllerProblema.BuscaImagens
        (dsProblemas.DataSet.FieldByName('cod_prob').AsInteger);

      btnImagensProblema.Caption := 'Imagens (' +
        IntToStr(aListaImagens.Count) + ')';
    finally
      aListaImagens.Free;
    end;
  end
  else
  begin
    btnImagensProblema.Caption := 'Imagens (' + IntToStr(0) + ')';

    if not (dsProblemas.State = dsInsert) then
      pnlProblemas.Enabled := False;
  end;

  dtProblema.date := dsProblemas.DataSet.FieldByName('datacr').AsDateTime;
  PreencheCbxModulos;
  EsticaMemoProblemas;

  if not(dsProblemas.DataSet.State = dsInsert) then
    SelecionaModuloCbProblema;
end;

procedure TformPrincipal.DsProblemasBeforePost(TDataSet: TDataSet);
begin
  if dsProblemas.DataSet.State = dsInsert then
  begin
    dsProblemas.DataSet.FieldByName('datacr').AsDateTime := Now;
    dsProblemas.DataSet.FieldByName('horacr').AsDateTime := Now;
    dsProblemas.DataSet.FieldByName('cod_prob').AsInteger := FControllerUtils.RetornaGeneratorProblema + 1;
  end;
end;

procedure TformPrincipal.DsProblemasEventos;
begin
  dsProblemas.DataSet.AfterScroll := DsProblemasAfterScroll;
  dsProblemas.DataSet.AfterInsert := DsProblemasAfterInsert;
  dsProblemas.DataSet.AfterCancel := DsProblemasAfterCancel;
  dsProblemas.DataSet.BeforePost := DsProblemasBeforePost;
  dsProblemas.DataSet.AfterEdit := DsProblemasAfterEdit;
  dsProblemas.DataSet.AfterPost := DsProblemasAfterPost;
end;

procedure TformPrincipal.edtPesqModuloKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    Selectnext(ActiveControl, True, True);
end;

procedure TformPrincipal.edtPesqProblemaKeyPress(Sender: TObject;
  var Key: Char);
begin
    if key=#13 then
      Selectnext(ActiveControl, True, True);
end;

procedure TformPrincipal.edtTituloProblemaMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  //Ao passar por cima do edit do título, mostra todo o conteúdo
  edtTituloProblema.Hint := edtTituloProblema.Text;
end;

procedure TformPrincipal.EsticaMemoProblemas;
begin
  { Implementa a lógica de aumentar o memos dos problemas caso o problemas
    esteja com o checkBox de Mostrar Somente a Solução marcado, caso contrário,
    mantém no tamanho padrão }

  if dsProblemas.DataSet.FieldByName('somentesolu').AsString = 'S' then
  begin
    pnlBodyDetalhesProblema.Visible := False;
    if mmSolucaoProblema.Height <> 450 then
      mmSolucaoProblema.Height := 450
  end
  else
  begin
    pnlBodyDetalhesProblema.Visible := True;
    if mmSolucaoProblema.Height <> 280 then
      mmSolucaoProblema.Height := 280
  end;
end;

procedure TformPrincipal.ExcluirProblema;
begin
  if dsModulos.DataSet.RecordCount > 0 then
    if Application.MessageBox('Deseja excluir este registro?', 'Excluir problema',
    +MB_ICONQUESTION + MB_YESNO) = MrYes then
    begin
      dsProblemas.DataSet.Delete;
    end;
end;

procedure TformPrincipal.gridModulosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  { Personaliza fonte do grid de módulos }
  with gridModulos.Columns[0] do
  begin
    Title.Font.Style := [fsBold];
    Title.Font.Size := 9;
  end;

  {   Caso a linha do grid for a selecionada no momento, muda as personalizações
    de estilo }
  with gridModulos do
  begin
    if gdSelected in State then
    begin
      Canvas.Brush.Color := StringToColor(FUsuario.Cor);
      Canvas.Font.Color := clBlack;
      Canvas.Font.Size := 9;
      Canvas.Font.Style := [fsBold];
      DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end
    else
      DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;

  { Faz a alternação de cores no grid }
  if State = [] then
  begin
    if gridModulos.DataSource.DataSet.RecNo mod 2 = 1 then
      gridModulos.Canvas.Brush.Color := clWhite
    else
      gridModulos.Canvas.Brush.Color := clBtnFace;
  end;
end;

procedure TformPrincipal.gridProblemasDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin

  { Personaliza a fonte do grid de módulos }
  with gridProblemas.Columns[0] do
  begin
    Title.Font.Style := [fsBold];
    Title.Font.Size := 9;
  end;

  { Caso a linha do grid for a selecionada no momento, muda as personalizações
    de estilo }
  with gridProblemas do
  begin
    if gdSelected in State then
    begin
      Canvas.Brush.Color := StringToColor(FUsuario.Cor);
      Canvas.Font.Color := clBlack;
      Canvas.Font.Size := 8;
      Canvas.Font.Style := [fsBold];
      DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end
    else
      DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;

  { Faz a alternação de cores no grid }
  if State = [] then
  begin
    if gridProblemas.DataSource.DataSet.RecNo mod 2 = 1 then
      gridProblemas.Canvas.Brush.Color := clWhite
    else
      gridProblemas.Canvas.Brush.Color := clBtnFace;
  end;
end;

procedure TformPrincipal.InverteCrudModulo;
begin
  btnCancelarModulo.Enabled := not btnCancelarModulo.Enabled;
  btnExcluirModulo.Enabled := not btnExcluirModulo.Enabled;
  btnSalvarModulo.Enabled := not btnSalvarModulo.Enabled;
  btnNovoModulo.Enabled := not btnNovoModulo.Enabled;
end;

procedure TformPrincipal.InverteCrudProblema;
begin
  btnCancelarProblema.Enabled := not btnCancelarProblema.Enabled;
  pnlBodyPesqProblema.Enabled := not pnlBodyPesqProblema.Enabled;
  btnExcluirProblema.Enabled := not btnExcluirProblema.Enabled;
  btnSalvarProblema.Enabled := not btnSalvarProblema.Enabled;
  pnlGridProblemas.Enabled := not pnlGridProblemas.Enabled;
  btnNovoProblema.Enabled := not btnNovoProblema.Enabled;
  pnlBodyModulos.Enabled := not pnlBodyModulos.Enabled;
end;

procedure TformPrincipal.mmDetalhesProblemaDblClick(Sender: TObject);
begin
  { Abre o memo em escala maior para visualização }

  FFormRichEditTelaCheia := TFormRichEditTelaCheia.Create(nil,
    mmDetalhesProblema.Text, 'Detalhes');
  try
    FFormRichEditTelaCheia.ShowModal;
  finally
    FFormRichEditTelaCheia.Free;
  end;
end;


procedure TformPrincipal.mmSolucaoProblemaDblClick(Sender: TObject);
begin
  { Abre o memo em escala maior para visualização }

  FFormRichEditTelaCheia := TFormRichEditTelaCheia.Create(nil,
    mmSolucaoProblema.Text, 'Solução');
  try
    FFormRichEditTelaCheia.ShowModal;
  finally
    FFormRichEditTelaCheia.Free;
  end;
end;

procedure TformPrincipal.N1Click(Sender: TObject);
begin
  { Abre a tela de preferência do usuário }

  var
    aUsuario: TUsuario := TUsuario.Create;
  var
    aFrmPreferencias: TFormPreferencias := TFormPreferencias.Create(Self,
      aUsuario);

  try
    aFrmPreferencias.ShowModal;
  finally
    aFrmPreferencias.Free;
    CarregaPersonalizacaoUsuario;
  end;
end;

procedure TformPrincipal.NovoProblema;
begin
  pnlProblemas.Enabled := True;
  dsProblemas.DataSet.Insert;

  cbModulo.ItemIndex := 0;
  while cbModulo.Text <> dsModulos.DataSet.Fields[0].Value do
  begin
    cbModulo.ItemIndex := cbModulo.ItemIndex + 1;
  end;

  var
    aCodigoModulo: Integer := FControllerModulo.BuscaCodigoModulo
      (cbModulo.Text);

  dsProblemas.DataSet.Edit;
  edtCodModulo.Text := IntToStr(aCodigoModulo);
end;

procedure TformPrincipal.btnAtualizarGridProblemasClick(Sender: TObject);
begin
  CarregaGridProblemas;
end;

procedure TformPrincipal.btnCancelarModuloClick(Sender: TObject);
begin
  dsModulos.DataSet.Cancel;
end;

procedure TformPrincipal.btnCancelarProblemaClick(Sender: TObject);
begin
  CancelarProblema;
end;

procedure TformPrincipal.btnConsultarModulosClick(Sender: TObject);
begin
  CarregaGridModulos;
end;

procedure TformPrincipal.btnNovoModuloClick(Sender: TObject);
begin
  dsModulos.DataSet.Insert;
end;

procedure TformPrincipal.btnNovoModuloMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  gridModulos.DataSource.DataSet.Insert;
  gridModulos.SetFocus;
end;

procedure TformPrincipal.btnNovoProblemaClick(Sender: TObject);
begin
  NovoProblema;
end;

procedure TformPrincipal.btnSalvaIndiceFiltroProblemaClick(Sender: TObject);
begin
  FUsuario.SetIndFiltroConsultaProblema(cbFiltroPesqProblema.ItemIndex);
end;

procedure TformPrincipal.btnSalvarModuloClick(Sender: TObject);
begin
  dsModulos.DataSet.Post;
end;

procedure TformPrincipal.btnSalvarModuloMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  CarregaGridModulos;
end;

procedure TformPrincipal.rdbtnFiltroPesqProblemaClick(Sender: TObject);
begin
  CarregaGridProblemas;
end;

procedure TformPrincipal.btnSalvarProblemaClick(Sender: TObject);
begin
  SalvarProblema;
end;

procedure TformPrincipal.btnConsultarProblemaClick(Sender: TObject);
begin
  {   Implementa a lógica de pesquisa dos problemas, caso o tamanho de letras
    no edit de pesquisa seja > 0, faz a busca no banco de dados referente ao
    filtro que está selecionado no comboBox, caso contrário, faz a pesquisa
    geral dos problemas }

  var
    aProblema := TProblema.Create;
  var
    aFiltro: String;

  try
    case rdbtnFiltroPesqProblema.ItemIndex of
      0: aFiltro := 'Geral';
      1: aFiltro := 'Módulo';
    end;

    if (Length(edtPesqProblema.Text) > 0) and (dsProblemas.DataSet.RecordCount > 0) then
    begin

      case cbFiltroPesqProblema.ItemIndex of
        0: // Pega apenas os 10 primeiros dígitos por conta de ser um integer
          aProblema.Codigo := StrToInt(Copy(edtPesqProblema.Text, 1, 10));
        1:
          aProblema.Titulo := edtPesqProblema.Text;
        2:
          aProblema.Chamado := edtPesqProblema.Text;
        3:
          aProblema.Detalhes := edtPesqProblema.Text;
        4:
          aProblema.Solucao := edtPesqProblema.Text;
      end;

      aProblema.Modulo := gridModulos.Columns[0].Field.Value;

      FControllerProblema.BuscaTabelaProblemasPorFiltro(aProblema,
        cbFiltroPesqProblema.Text, aFiltro);

      PersonalizaGridProblemas;
    end
    else
      CarregaGridProblemas;
  finally
    aProblema.Free;
  end;
end;

procedure TformPrincipal.gridModulosCellClick(Column: TColumn);
begin
  CarregaGridProblemas;
end;

end.
