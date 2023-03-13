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

    procedure btnNovoProblemaClick(Sender: TObject);
    procedure btnSalvarProblemaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnExcluirProblemaClick(Sender: TObject);
    procedure btnCancelarProblemaClick(Sender: TObject);
    procedure btnNovoModuloClick(Sender: TObject);
    procedure btnSalvarModuloClick(Sender: TObject);
    procedure btnCancelarModuloClick(Sender: TObject);
    procedure btnExcluirModuloClick(Sender: TObject);
    procedure edtPesquisaModuloChange(Sender: TObject);
    procedure edtPesquisaProblemaChange(Sender: TObject);
    procedure btnVerImagensClick(Sender: TObject);
    procedure btnVoltarImagemProblemaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnAddImagemProblemaClick(Sender: TObject);
    procedure btnAddImagemSolucaoClick(Sender: TObject);
    procedure gridModulosCellClick(Column: TColumn);
    procedure btnRemoverImagemProblemaClick(Sender: TObject);
    procedure btnRemoverImagemSolucaoClick(Sender: TObject);
    procedure AtualizaGridProblemas;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure gridModulosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnVoltarImagemSolucaoClick(Sender: TObject);
    procedure pnlImagensSolucaoClick(Sender: TObject);
    procedure btnVerImagensSolucaoClick(Sender: TObject);
    procedure rdbtnFiltroPesquisaProblemasClick(Sender: TObject);
    procedure ContaRegistrosProblemas;
    procedure ConsultaProblemas;
    procedure PreencheCBModulos;
    procedure ConsultaProblemasPorModulo;
    procedure ConsultaModulos;
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
  pngimage,
  Suporte.Connection.Connection;

procedure TformPrincipal.ConsultaProblemas;
begin
  with Suporte.Connection.Connection.connection.qProblemas do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from problemas where pr_titulo like :ParamProblema order by pr_titulo');
    ParamByName('ParamProblema').AsString := '%' + edtPesquisaProblema.Text + '%';
    Open;
    end;
end;

procedure TformPrincipal.ConsultaProblemasPorModulo;
begin
  with Suporte.Connection.Connection.connection.qProblemas do
  begin
    close;
    SQL.Clear;
    SQL.Add('select * from problemas where pr_modulo = :ParamModulo and pr_titulo like :ParamPesquisa');
    ParamByName('ParamModulo').AsString := gridModulos.Columns[0].Field.Value;
    ParamByName('ParamPesquisa').AsString := '%' + edtPesquisaProblema.Text + '%';
    Open;
  end;
end;

procedure TformPrincipal.ConsultaModulos;
begin
  with Suporte.Connection.Connection.connection.qModulos do
  begin
    close;
    sql.Clear;
    Sql.Add('select * from modulos_problemas where mo_nome like :ParamModulo');
    ParamByName('ParamModulo').AsString := '%' + edtPesquisaModulo.Text + '%';
    Open;
  end;
end;

procedure TformPrincipal.ContaRegistrosProblemas;
var
  registros : integer;
begin
  registros := 0;

  with Suporte.Connection.Connection.connection.qContaRegistros do
  begin
    close;
    Sql.Clear;
    Sql.Add('Select * from problemas');
    Open;

    while not Suporte.Connection.Connection.connection.qContaRegistros.Eof  do
    begin
      registros := registros + 1;
      next;
    end;

    lblTotalDeProblemas.Caption := 'Total de problemas: ' + IntToStr(registros);
  end;
end;

procedure TformPrincipal.gridModulosCellClick(Column: TColumn);
begin
  cardPanelProblemas.ActiveCard := pnlCadastroProblema;
  AtualizaGridProblemas;
end;

procedure TformPrincipal.gridModulosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_RETURN then
    if Suporte.Connection.Connection.connection.qModulos.State = dsEdit then
      Suporte.Connection.Connection.connection.qModulos.Post;
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

procedure TformPrincipal.edtPesquisaModuloChange(Sender: TObject);
begin
  ConsultaModulos;
end;

procedure TformPrincipal.edtPesquisaProblemaChange(Sender: TObject);
begin
  if rdbtnFiltroPesquisaProblemas.ItemIndex = 0 then
    begin
      ConsultaProblemas;
    end;

  if rdbtnFiltroPesquisaProblemas.ItemIndex = 1 then
    begin
      ConsultaProblemasPorModulo;
    end;
end;

procedure TformPrincipal.FormCreate(Sender: TObject);
begin
  cardPanelProblemas.ActiveCard := pnlCadastroProblema;
end;

procedure TformPrincipal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F4 then
    Suporte.Connection.Connection.connection.qProblemas.Post;

  if key = VK_F3 then
  begin
    Suporte.Connection.Connection.connection.qProblemas.Insert;
    edtTituloProblema.SetFocus;
  end;
end;

procedure TformPrincipal.FormShow(Sender: TObject);
begin
  PreencheCBModulos;
  ContaRegistrosProblemas;
end;

procedure TformPrincipal.AtualizaGridProblemas;
begin
  if Suporte.Connection.Connection.connection.qModulos.State in [dsBrowse] then
    begin
      ConsultaProblemasPorModulo;
    end;
end;

procedure TformPrincipal.PreencheCBModulos;
begin
  cbModulos.Clear;

  with Suporte.Connection.Connection.connection.qComboModulos do
  begin
    Close;
    SQL.Clear;
    SQL.ADD('Select * from modulos_problemas');
    Open;
    First;

    while not Suporte.Connection.Connection.connection.qComboModulos.Eof do
    begin
      cbModulos.items.add(Suporte.Connection.Connection.connection.qComboModulos['mo_nome']);
      Next;
    end;
  end;
end;

procedure TformPrincipal.rdbtnFiltroPesquisaProblemasClick(Sender: TObject);
begin
  if rdbtnFiltroPesquisaProblemas.ItemIndex = 0 then
  begin
    ConsultaProblemas;

    pnlBodyModulos.Visible := False;
    pnlBodyProblemas.Align := alClient;
    gridProblemas.Align := alClient;
  end;

  if rdbtnFiltroPesquisaProblemas.ItemIndex = 1 then
  begin
    ConsultaProblemasPorModulo;

    pnlBodyModulos.Visible := True;
    gridProblemas.Align := alLeft;
  end;
end;

procedure TformPrincipal.btnAddImagemProblemaClick(Sender: TObject);
begin
  Suporte.Connection.Connection.connection.qProblemas.Edit;

  if OpenDialog1.Execute then
  begin
    imgProblema.Picture.LoadFromFile(OpenDialog1.FileName);
  end;
end;

procedure TformPrincipal.btnAddImagemSolucaoClick(Sender: TObject);
begin
  Suporte.Connection.Connection.connection.qProblemas.Edit;

  if OpenDialog1.Execute then
  begin
    imgSolucao.Picture.LoadFromFile(OpenDialog1.FileName);
  end;
end;

procedure TformPrincipal.btnCancelarModuloClick(Sender: TObject);
begin
  Suporte.Connection.Connection.connection.qModulos.Cancel;
end;

procedure TformPrincipal.btnCancelarProblemaClick(Sender: TObject);
begin
  Suporte.Connection.Connection.connection.qProblemas.Cancel;
end;

procedure TformPrincipal.btnExcluirModuloClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja excluir este m�dulo?', 'Excluir',
    + MB_ICONQUESTION + MB_YESNO) = MrYes then
    begin
      Suporte.Connection.Connection.connection.qModulos.Delete;
    end;
end;

procedure TformPrincipal.btnExcluirProblemaClick(Sender: TObject);
begin
   if Application.MessageBox('Deseja excluir este problema?', 'Excluir',
    + MB_ICONQUESTION + MB_YESNO) = MrYes then
    begin
      Suporte.Connection.Connection.connection.qProblemas.Delete;
    end;
end;

procedure TformPrincipal.btnImagemProblemaClick(Sender: TObject);
begin
  cardPanelProblemas.ActiveCard := pnlImagensProblema;
end;

procedure TformPrincipal.btnImagemSolucaoClick(Sender: TObject);
begin
  cardPanelProblemas.ActiveCard := pnlImagensSolucao;
end;

procedure TformPrincipal.btnNovoModuloClick(Sender: TObject);
begin
  Suporte.Connection.Connection.connection.qModulos.Insert;
end;

procedure TformPrincipal.btnNovoProblemaClick(Sender: TObject);
begin
  Suporte.Connection.Connection.Connection.qProblemas.Insert;
  PreencheCBModulos;
  edtTituloProblema.SetFocus;
end;

procedure TformPrincipal.btnRemoverImagemProblemaClick(Sender: TObject);
begin
  Suporte.Connection.Connection.connection.qProblemas.Edit;

  imgProblema.Picture := nil;
end;

procedure TformPrincipal.btnRemoverImagemSolucaoClick(Sender: TObject);
begin
  Suporte.Connection.Connection.connection.qProblemas.Edit;

  imgSolucao.Picture := nil;
end;

procedure TformPrincipal.btnSalvarModuloClick(Sender: TObject);
begin
  Suporte.Connection.Connection.connection.qModulos.Post;
end;

procedure TformPrincipal.btnSalvarProblemaClick(Sender: TObject);
begin
  Suporte.Connection.Connection.Connection.qProblemas.Post;
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
