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
  Vcl.Clipbrd, Connection;

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
    procedure gridProblemasDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure gridModulosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  formPrincipal: TformPrincipal;
  aConnection: TdmConnection;

implementation
{$R *.dfm}

uses
  jpeg,
  pngimage;

procedure TformPrincipal.ConsultaProblemas;
begin
  aConnection.Create;
  try
    with aConnection.qProblemas do
    begin
      Close;
      SQL.Clear;
      SQL.Add('select * from problemas where pr_titulo like :ParamProblema order by pr_titulo');
      ParamByName('ParamProblema').AsString := '%' + edtPesquisaProblema.Text + '%';
      Open;
    end;
  finally
    aConnection.Free;
  end;

end;

procedure TformPrincipal.ConsultaProblemasPorModulo;
begin
  aConnection.Create;

  try
    with aConnection.qProblemas do
    begin
      close;
      SQL.Clear;
      SQL.Add('select * from problemas where pr_modulo = :ParamModulo and pr_titulo like :ParamPesquisa');
      ParamByName('ParamModulo').AsString := gridModulos.Columns[0].Field.Value;
      ParamByName('ParamPesquisa').AsString := '%' + edtPesquisaProblema.Text + '%';
      Open;
    end;
  finally
    aConnection.Free;
  end;

end;

procedure TformPrincipal.ConsultaModulos;
begin
  aConnection.Create;

  try
    with aConnection.qModulos do
    begin
      close;
      sql.Clear;
      Sql.Add('select * from modulos_problemas where mo_nome like :ParamModulo');
      ParamByName('ParamModulo').AsString := '%' + edtPesquisaModulo.Text + '%';
      Open;
    end;
  finally
    aConnection.Free;
  end;
end;

procedure TformPrincipal.ContaRegistrosProblemas;
var
  registros: integer;
begin
  registros := 0;
  aConnection.Create;

  try
    with aConnection.qContaRegistros do
    begin
      close;
      Sql.Clear;
      Sql.Add('Select * from problemas');
      Open;

      while not Eof do
      begin
        registros := registros + 1;
        next;
      end;

      lblTotalDeProblemas.Caption := 'Total de problemas: ' + IntToStr(registros);
    end;
  finally
    aConnection.Free;
  end;
end;

procedure TformPrincipal.gridModulosCellClick(Column: TColumn);
begin
  cardPanelProblemas.ActiveCard := pnlCadastroProblema;
  AtualizaGridProblemas;
end;

procedure TformPrincipal.gridModulosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  aConnection.Create;

  try
    if State = [] then
    begin
      if aConnection.qModulos.RecNo mod 2 = 1 then
        gridModulos.Canvas.Brush.Color := clBtnFace
      else
        gridModulos.Canvas.Brush.Color := clWhite;
    end;

  gridModulos.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  finally
    aConnection.Create;
  end;
end;

procedure TformPrincipal.gridModulosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  aConnection.Create;

  try
    if key = VK_RETURN then
      if aConnection.qModulos.State = dsEdit then
        aConnection.qModulos.Post;
  finally
    aConnection.Free;
  end;
end;

procedure TformPrincipal.gridProblemasDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  aConnection.Create;

  try
    if State = [] then
    begin
      if aConnection.qProblemas.RecNo mod 2 = 1 then
        gridProblemas.Canvas.Brush.Color := clBtnFace
      else
        gridProblemas.Canvas.Brush.Color := clWhite;
    end;
    gridProblemas.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  finally
    aConnection.Free;
  end;
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
  aConnection.Create;

  try
    cardPanelProblemas.ActiveCard := pnlCadastroProblema;
  finally
    aConnection.Free;
  end;
end;

procedure TformPrincipal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  aConnection.Create;

  try
    if key = VK_F4 then
      aConnection.qProblemas.Post;

    if key = VK_F3 then
    begin
      aConnection.qProblemas.Insert;
      edtTituloProblema.SetFocus;
    end;
  finally
    aConnection.Free;
  end;
end;

procedure TformPrincipal.FormShow(Sender: TObject);
begin
  PreencheCBModulos;
  ContaRegistrosProblemas;
end;

procedure TformPrincipal.AtualizaGridProblemas;
begin
  aConnection.Create;

  try
    if aConnection.qModulos.State in [dsBrowse] then
      ConsultaProblemasPorModulo;
  finally
    aConnection.Free;
  end;
end;

procedure TformPrincipal.PreencheCBModulos;
begin
  aConnection.Create;
  cbModulos.Clear;

  try
    with aConnection.qComboModulos do
    begin
      Close;
      SQL.Clear;
      SQL.ADD('Select * from modulos_problemas');
      Open;
      First;
    end;

    while not aConnection.qComboModulos.Eof do
    begin
      cbModulos.items.add(aConnection.qComboModulos['mo_nome']);
      Next;
    end;
  finally
    aConnection.Free;
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
  aConnection.Create;

  try
    aConnection.qProblemas.Edit;

    if OpenDialog1.Execute then
    begin
      imgProblema.Picture.LoadFromFile(OpenDialog1.FileName);
    end;
  finally
    aConnection.Free;
  end;
end;

procedure TformPrincipal.btnAddImagemSolucaoClick(Sender: TObject);
begin
  aConnection.Create;
  try
    aConnection.qProblemas.Edit;

    if OpenDialog1.Execute then
    begin
      imgSolucao.Picture.LoadFromFile(OpenDialog1.FileName);
    end;
  finally
    aConnection.Free;
  end;

end;

procedure TformPrincipal.btnCancelarModuloClick(Sender: TObject);
begin
  aConnection.Create;

  try
    aConnection.qModulos.Cancel;
  finally
    aConnection.Free;
  end;

end;

procedure TformPrincipal.btnCancelarProblemaClick(Sender: TObject);
begin
  aConnection.Create;

  try
    aConnection.qProblemas.Cancel;
  finally
    aConnection.Free;
  end;
end;

procedure TformPrincipal.btnExcluirModuloClick(Sender: TObject);
begin
  aConnection.Create;

  try
    if Application.MessageBox('Deseja excluir este m�dulo?', 'Excluir',
    + MB_ICONQUESTION + MB_YESNO) = MrYes then
      aConnection.qModulos.Delete;
  finally
    aConnection.Free;
  end;
end;

procedure TformPrincipal.btnExcluirProblemaClick(Sender: TObject);
begin
  aConnection.Create;

  try
    if Application.MessageBox('Deseja excluir este problema?', 'Excluir',
    + MB_ICONQUESTION + MB_YESNO) = MrYes then
      aConnection.qProblemas.Delete;
  finally
    aConnection.Free;
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
  aConnection.Create;

  try
    aConnection.qModulos.Insert;
  finally
    aConnection.Free;
  end;
end;

procedure TformPrincipal.btnNovoProblemaClick(Sender: TObject);
begin
  aConnection.Create;

  try
    aConnection.qProblemas.Insert;
  finally
    aConnection.Free;
  end;

  PreencheCBModulos;
  edtTituloProblema.SetFocus;
end;

procedure TformPrincipal.btnRemoverImagemProblemaClick(Sender: TObject);
begin
  aConnection.Create;

  try
    aConnection.qProblemas.Edit;
  finally
    aConnection.Free;
  end;

  imgProblema.Picture := nil;
end;

procedure TformPrincipal.btnRemoverImagemSolucaoClick(Sender: TObject);
begin
  aConnection.Create;
  try
    aConnection.qProblemas.Edit;
  finally
    aConnection.Free;
  end;

  imgSolucao.Picture := nil;
end;

procedure TformPrincipal.btnSalvarModuloClick(Sender: TObject);
begin
  aConnection.Create;

  try
    aConnection.qModulos.Post;
  finally
    aConnection.Free;
  end;
end;

procedure TformPrincipal.btnSalvarProblemaClick(Sender: TObject);
begin
  aConnection.Create;

  try
    aConnection.qProblemas.Post;
  finally
    aConnection.Free;
  end;
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
