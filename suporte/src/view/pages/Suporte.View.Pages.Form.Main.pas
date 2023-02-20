unit Suporte.View.Pages.Form.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.DBCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Buttons, Vcl.Mask,
  Vcl.WinXPanels, Vcl.FileCtrl;

type
  TformPrincipal = class(TForm)
    pnlBodyProblemas: TPanel;
    pnlTopProblemas: TPanel;
    pnlGridProblemas: TPanel;
    gridProblemas: TDBGrid;
    lblTituloProblemas: TLabel;
    pnlBodyModulos: TPanel;
    pnlTopModulos: TPanel;
    lblTituloModulos: TLabel;
    pnlGridModulos: TPanel;
    gridModulos: TDBGrid;
    pnlBotoesProblemas: TPanel;
    btnNovoProblema: TSpeedButton;
    btnSalvarProblema: TSpeedButton;
    btnExcluirProblema: TSpeedButton;
    btnCancelarProblema: TSpeedButton;
    pnlBotoesModulos: TPanel;
    btnNovoModulo: TSpeedButton;
    btnSalvarModulo: TSpeedButton;
    btnExcluirModulo: TSpeedButton;
    btnCancelarModulo: TSpeedButton;
    pnlPesquisaProblemas: TPanel;
    pnlPesquisaModulos: TPanel;
    edtPesquisaModulo: TEdit;
    lblPesquisaModulos: TLabel;
    edtPesquisaProblema: TEdit;
    Label4: TLabel;
    rdbtnFiltroPesquisaProblemas: TRadioGroup;
    pnlPrincipal: TPanel;
    pnlBodyModulosProblemas: TPanel;
    OpenDialog1: TOpenDialog;
    CardPanel1: TCardPanel;
    pnlCadastroProblema: TCard;
    pnlImagensProblema: TCard;
    pnlProblemas: TPanel;
    lblModuloProblema: TLabel;
    lblDetalhesProblema: TLabel;
    lblSolucaoProblema: TLabel;
    pnlTituloProblema: TPanel;
    lblTituloProblema: TLabel;
    lblDataProblema: TLabel;
    edtTituloProblema: TDBEdit;
    edtHoraProblema: TDBEdit;
    mmDetalhesProblema: TDBMemo;
    mmSolucao: TDBMemo;
    cbModulos: TDBComboBox;
    btAddImagemProblema: TButton;
    btnAddImagemSolucao: TButton;
    imgProblema: TDBImage;
    imgSolucao: TDBImage;
    btnVerImagens: TButton;
    Button4: TButton;
    btnRemoverImagemProblema: TButton;
    btnRemoverImagemSolucao: TButton;
    edtNumeroChamado: TDBEdit;
    Label1: TLabel;
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
    procedure Button4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btAddImagemProblemaClick(Sender: TObject);
    procedure btnAddImagemSolucaoClick(Sender: TObject);
    procedure gridModulosCellClick(Column: TColumn);
    procedure btnRemoverImagemProblemaClick(Sender: TObject);
    procedure btnRemoverImagemSolucaoClick(Sender: TObject);
    procedure gridModulosMouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure AtualizaGridProblemas;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure gridModulosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    procedure PreencheCBModulos;
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

procedure TformPrincipal.gridModulosCellClick(Column: TColumn);
begin
  CardPanel1.ActiveCard := pnlCadastroProblema;
  AtualizaGridProblemas;
end;

procedure TformPrincipal.gridModulosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_RETURN then
    if connection.qModulos.State = dsEdit then
      connection.qModulos.Post;
end;

procedure TformPrincipal.gridModulosMouseWheel(Sender: TObject;
  Shift: TShiftState; WheelDelta: Integer; MousePos: TPoint;
  var Handled: Boolean);
begin
  AtualizaGridProblemas;
end;

procedure TformPrincipal.edtPesquisaModuloChange(Sender: TObject);
begin
  with connection.qModulos do
  begin
    close;
    sql.Clear;
    Sql.Add('select * from modulos_problemas where mo_nome like :ParamModulo');
    ParamByName('ParamModulo').AsString := '%' + edtPesquisaModulo.Text + '%';
    Open;
  end;
end;

procedure TformPrincipal.edtPesquisaProblemaChange(Sender: TObject);
begin
  if rdbtnFiltroPesquisaProblemas.ItemIndex = 0 then
  begin
    with connection.qProblemas do
    begin
      close;
      sql.Clear;
      Sql.Add('select * from problemas where pr_problema like :ParamProblema');
      ParamByName('ParamProblema').AsString := '%' + edtPesquisaProblema.Text + '%';
      Open;
    end;
  end;

  if rdbtnFiltroPesquisaProblemas.ItemIndex = 1 then
  begin
    with connection.qProblemas do
    begin
      close;
      sql.Clear;
      Sql.Add('select * from problemas where pr_problema like :ParamProblema and pr_modulo = :ParamProblema1');
      ParamByName('ParamProblema').AsString := '%' + edtPesquisaProblema.Text + '%';
      ParamByName('ParamProblema1').AsString := gridModulos.Columns[0].Field.Value;
      Open;
    end;
  end;
end;

procedure TformPrincipal.FormCreate(Sender: TObject);
begin
  CardPanel1.ActiveCard := pnlCadastroProblema;
end;

procedure TformPrincipal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_F4 then
    connection.qProblemas.Post;

  if key = VK_F3 then
  begin
    connection.qProblemas.Insert;
    edtTituloProblema.SetFocus;
  end;
end;

procedure TformPrincipal.FormShow(Sender: TObject);
begin
  PreencheCBModulos;
end;

procedure TformPrincipal.AtualizaGridProblemas;
begin
  with connection.qProblemas do
  begin
    close;
    sql.Clear;
    Sql.Add('select * from problemas where pr_modulo = :ParamModulo');
    ParamByName('ParamModulo').AsString := gridModulos.Columns[0].Field.Value;
    Open;
  end;
end;

procedure TformPrincipal.PreencheCBModulos;
begin
  cbModulos.Clear;

  with connection.qComboModulos do
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

procedure TformPrincipal.btAddImagemProblemaClick(Sender: TObject);
begin
  connection.qProblemas.Edit;

  if OpenDialog1.Execute then
  begin
    imgProblema.Picture.LoadFromFile(OpenDialog1.FileName);
  end;
end;

procedure TformPrincipal.btnAddImagemSolucaoClick(Sender: TObject);
begin
  connection.qProblemas.Edit;

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
  if Application.MessageBox('Deseja excluir este módulo?', 'Excluir',
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
  connection.qProblemas.Edit;

  imgProblema.Picture := nil;
end;

procedure TformPrincipal.btnRemoverImagemSolucaoClick(Sender: TObject);
begin
  connection.qProblemas.Edit;

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
  CardPanel1.ActiveCard := pnlImagensProblema;
end;

procedure TformPrincipal.Button4Click(Sender: TObject);
begin
  CardPanel1.ActiveCard := pnlCadastroProblema;
end;

end.
