unit frmMain;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
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
  uControllerModulo,
  uControllerProblema,
  uProblema,
  jpeg,
  pngimage,

  frmImagensProblema, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TformPrincipal = class(TForm)
    gridModulos: TDBGrid;
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
    pnlEscolhaUmRegistro: TPanel;
    pnlProblemas: TPanel;
    pnlBodyModuloProblema: TPanel;
    btnImagensProblema: TSpeedButton;
    pnlBodySolucaoProblema: TPanel;
    pnlSolucaoProblema: TPanel;
    lblSolucaoProblema: TLabel;
    pnlTopProblema: TPanel;
    lblDataProblema: TLabel;
    lblChamadoProblema: TLabel;
    lblCodProblema: TLabel;
    lblTituloProblema: TLabel;
    pnlBodyDetalhesProblema: TPanel;
    pnlDetalhesProblema: TPanel;
    lblDetalhesProblema: TLabel;
    pnlModuloProblema: TPanel;
    lblModuloProblema: TLabel;
    dsModulos: TDataSource;
    dsProblemas: TDataSource;
    edtTituloProblema: TDBEdit;
    edtChamadoProblema: TDBEdit;
    edtCodProblema: TDBEdit;
    mmDetalhesProblema: TDBRichEdit;
    mmSolucaoProblema: TDBRichEdit;
    btnExcluirProblema: TSpeedButton;
    btnCancelarProblema: TSpeedButton;
    btnSalvarProblema: TSpeedButton;
    btnNovoProblema: TSpeedButton;
    btnExcluirModulo: TSpeedButton;
    btnNovoModulo: TSpeedButton;
    cbModulo: TComboBox;
    dtProblema: TDateTimePicker;

    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure gridModulosCellClick(Column: TColumn);
    procedure btnSalvarModuloMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure rdbtnFiltroPesqProblemaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure gridProblemasCellClick(Column: TColumn);
    procedure btnExcluirProblemaClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnImagensProblemaClick(Sender: TObject);
    procedure btnNovoModuloMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure gridModulosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnExcluirModuloClick(Sender: TObject);
    procedure gridModulosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure gridProblemasDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure edtPesqProblemaChange(Sender: TObject);
    procedure btnNovoProblemaClick(Sender: TObject);
    procedure btnSalvarProblemaClick(Sender: TObject);
    procedure btnCancelarProblemaClick(Sender: TObject);
    procedure btnNovoModuloClick(Sender: TObject);
  private
    { Private declarations }
    FFormImagensProblema: TformImagensProblema;
    FControllerModulo: TControllerModulo;
    FControllerProblema: TControllerProblema;

    procedure CarregaGridProblemas;
    procedure CarregaDadosProblemas;
    procedure CarregaGridModulos;
    procedure PreencheCbxModulos;
    procedure InverteBotoesCrudProblema;
    procedure DsProblemasBeforePost(TDataSet: TDataSet);
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

procedure TformPrincipal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//  if Key = VK_F3 then
//    if btnNovoProblema.Enabled then
//      if pnlProblemas.Enabled then
//        EventoCadastrarProblema;
//  if Key = VK_F4 then
//    if btnNovoProblema.Enabled = False then
//      if pnlProblemas.Enabled then
//        EventoSalvarProblema;
end;

procedure TformPrincipal.FormShow(Sender: TObject);
begin
  edtPesqModulo.SetFocus;
  cardPanelProblemas.ActiveCard := pnlCadastroProblema;

  pnlProblemas.Enabled := True;
  CarregaGridModulos;
  CarregaGridProblemas;
end;

procedure TformPrincipal.PreencheCbxModulos;
begin
  var
    aListaModulos: TStringList;
  var
    aCont: Integer := 0;

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

procedure TformPrincipal.btnImagensProblemaClick(Sender: TObject);
begin
  var
    aCaminhoImagem: String;
  var
    aContador: Integer := 0;
  FFormImagensProblema := TformImagensProblema.Create(nil);
  try
    FFormImagensProblema.ShowModal;
  finally
    FFormImagensProblema.Free;
  end;
end;

procedure TformPrincipal.btnCancelarProblemaClick(Sender: TObject);
begin
  InverteBotoesCrudProblema;

  dsProblemas.DataSet.Cancel;
end;

procedure TformPrincipal.btnExcluirModuloClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja excluir este registro?', 'Excluir m�dulo',
    +MB_ICONQUESTION + MB_YESNO) = MrYes then
  begin
    var
      aModulo: TModulo := TModulo.Create;
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
      CarregaGridProblemas;
      CarregaDadosProblemas;
    end;
    if gridProblemas.DataSource.DataSet.RecordCount < 1 then
      pnlProblemas.Visible := False;
  finally
    aProblema.Free;
  end;
end;

procedure TformPrincipal.CarregaDadosProblemas;
var
  aNomeProblema: String;
  cont: Integer;
  msDetalhes: TStream;
  msSolucao: TStream;
  aListaImagens: TStringList;
begin
  cont := 0;

  if Assigned(gridProblemas.DataSource) and
    (gridProblemas.DataSource.DataSet.RecordCount > 0) then
  begin
    PreencheCbxModulos;
    pnlProblemas.Visible := True;
    aNomeProblema := gridProblemas.Columns[0].Field.Value;
    dsProblemas.DataSet := FControllerProblema.CarregaDadosProblema
      (aNomeProblema).DataSet;
  end;
end;

procedure TformPrincipal.CarregaGridModulos;
begin
  var aTabelaModulos: TDataSource := FControllerModulo.BuscaTabelaModulos;

  dsModulos.DataSet := aTabelaModulos.DataSet;
  dsModulos.DataSet.First;
end;

procedure TformPrincipal.CarregaGridProblemas;
begin
  var
    aNomeModulo: String;

  if Assigned(gridModulos.DataSource) and
    (gridModulos.DataSource.DataSet.RecordCount > 0) then
    aNomeModulo := gridModulos.Columns[0].Field.Value
  else
    aNomeModulo := '';

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

  lblTotalDeProblemas.Caption := 'Total: ' +
    IntToStr(gridProblemas.DataSource.DataSet.RecordCount);
end;

procedure TformPrincipal.DsProblemasBeforePost(TDataSet: TDataSet);
begin
  dsProblemas.DataSet.FieldByName('datacr').AsDateTime := Now;
  dsProblemas.DataSet.FieldByName('horacr').AsDateTime := Now;
  dsProblemas.DataSet.FieldByName('cod_prob').AsInteger := 555;
  dsProblemas.DataSet.FieldByName('cod_mod').AsInteger := FControllerModulo.BuscaCodigoModulo(cbModulo.Text);
end;

procedure TformPrincipal.edtPesqProblemaChange(Sender: TObject);
begin
  var aProblema := TProblema.Create;
  var aFiltro: String;

  try
    case rdbtnFiltroPesqProblema.ItemIndex of
      0: aFiltro := 'Geral';
      1: aFiltro := 'M�dulo';
    end;

    if Length(edtPesqProblema.Text) > 0 then
    begin
      case cbFiltroPesqProblema.ItemIndex of
        0: aProblema.Codigo := StrToInt(edtPesqProblema.Text);
        1: aProblema.Titulo := edtPesqProblema.Text;
        2: aProblema.Chamado := edtPesqProblema.Text;
      end;
      aProblema.Modulo := gridModulos.Columns[0].Field.Value;
      FControllerProblema.BuscaTabelaProblemasPorFiltro(aProblema,
        cbFiltroPesqProblema.Text, aFiltro);
    end
    else
      CarregaGridProblemas;

  finally
      aProblema.Free;
  end;
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
  InverteBotoesCrudProblema;

  pnlProblemas.Visible := True;
  edtTituloProblema.SetFocus;
  PreencheCbxModulos;

  dsProblemas.DataSet.Append;
end;

procedure TformPrincipal.btnSalvarModuloMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  CarregaGridModulos;
end;

procedure TformPrincipal.btnSalvarProblemaClick(Sender: TObject);
begin
  InverteBotoesCrudProblema;

  dsProblemas.DataSet.Post;
end;

procedure TformPrincipal.gridModulosCellClick(Column: TColumn);
begin
  CarregaGridProblemas;
  CarregaDadosProblemas;
end;

procedure TformPrincipal.gridModulosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  with gridModulos.Columns[0] do
  begin
    Title.Font.Style := [fsBold];
    Title.Font.Size := 9;
  end;
  if State = [] then
  begin
    if gridModulos.DataSource.DataSet.RecNo mod 2 = 1 then
      gridModulos.Canvas.Brush.Color := clWhite
    else
      gridModulos.Canvas.Brush.Color := clBtnFace;
  end;
  with gridModulos do
  begin
    if gdSelected in State then
    begin
      Canvas.Brush.Color := $00FFF9F4;
      Canvas.Font.Color := clBlack;
      Canvas.Font.Size := 9;
      Canvas.Font.Style := [fsBold];
      DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end
    else
      DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
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

procedure TformPrincipal.gridProblemasDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  with gridProblemas.Columns[0] do
  begin
    Title.Font.Style := [fsBold];
    Title.Font.Size := 9;
  end;
  if State = [] then
  begin
    if gridProblemas.DataSource.DataSet.RecNo mod 2 = 1 then
      gridProblemas.Canvas.Brush.Color := clWhite
    else
      gridProblemas.Canvas.Brush.Color := clBtnFace;
  end;
  with gridProblemas do
  begin
    if gdSelected in State then
    begin
      Canvas.Brush.Color := $00FFF9F4;
      Canvas.Font.Color := clBlack;
      Canvas.Font.Size := 8;
      Canvas.Font.Style := [fsBold];
      DefaultDrawColumnCell(Rect, DataCol, Column, State);
    end
    else
      DefaultDrawColumnCell(Rect, DataCol, Column, State);
  end;
end;

procedure TformPrincipal.InverteBotoesCrudProblema;
begin
  btnNovoProblema.Enabled := not btnNovoProblema.Enabled;
  btnSalvarProblema.Enabled := not btnSalvarProblema.Enabled;
  btnExcluirProblema.Enabled := not btnExcluirProblema.Enabled;
  btnCancelarProblema.Enabled := not btnCancelarProblema.Enabled;
end;

procedure TformPrincipal.FormCreate(Sender: TObject);
begin
  FControllerProblema := TControllerProblema.Create;
  FControllerModulo := TControllerModulo.Create;

  dsProblemas.DataSet := FControllerProblema.CarregaDadosProblema(' ').DataSet;
  dsProblemas.DataSet.BeforePost := DsProblemasBeforePost;
end;

procedure TformPrincipal.FormDestroy(Sender: TObject);
begin
  FControllerProblema.Free;
  FControllerModulo.Free;
end;

end.
