unit suporte;
interface
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.DBCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Buttons, Vcl.Mask;
type
  TformPrincipal = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    gridModulos: TDBGrid;
    Label1: TLabel;
    Panel5: TPanel;
    Panel6: TPanel;
    Label2: TLabel;
    Panel7: TPanel;
    DBGrid1: TDBGrid;
    pnlBotoesProblemas: TPanel;
    pnlProblemas: TPanel;
    Panel8: TPanel;
    edtTituloProblema: TDBEdit;
    edtHoraProblema: TDBEdit;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    cbModulos: TDBComboBox;
    btnNovoProblema: TSpeedButton;
    btnSalvarProblema: TSpeedButton;
    btnExcluirProblema: TSpeedButton;
    lblTituloProblema: TLabel;
    lblModuloProblema: TLabel;
    lblDataProblema: TLabel;
    lblDetalhesProblema: TLabel;
    lblSolucaoProblema: TLabel;
    btnCancelarProblema: TSpeedButton;
    Panel9: TPanel;
    btnNovoModulo: TSpeedButton;
    btnSalvarModulo: TSpeedButton;
    btnExcluirModulo: TSpeedButton;
    btnCancelarModulo: TSpeedButton;
    Panel10: TPanel;
    Panel11: TPanel;
    edtPesquisaModulo: TEdit;
    Label3: TLabel;
    edtPesquisaProblema: TEdit;
    Label4: TLabel;
    rdbtnFiltroPesquisaProblemas: TRadioGroup;
    procedure btnNovoProblemaClick(Sender: TObject);
    procedure btnSalvarProblemaClick(Sender: TObject);
    procedure DBGrid1MouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure btnExcluirProblemaClick(Sender: TObject);
    procedure btnCancelarProblemaClick(Sender: TObject);
    procedure btnNovoModuloClick(Sender: TObject);
    procedure btnSalvarModuloClick(Sender: TObject);
    procedure btnCancelarModuloClick(Sender: TObject);
    procedure btnExcluirModuloClick(Sender: TObject);
    procedure edtPesquisaModuloChange(Sender: TObject);
    procedure edtPesquisaProblemaChange(Sender: TObject);
  private
    procedure PreencheCBModulos;
    procedure AtivaBotoesProblema;
    procedure AtualizaGridProblemas;
    { Private declarations }
  public
    { Public declarations }
  end;
var
  formPrincipal: TformPrincipal;

implementation
{$R *.dfm}

uses dm;

procedure TformPrincipal.DBGrid1CellClick(Column: TColumn);
begin
  AtualizaGridProblemas;
end;

procedure TformPrincipal.DBGrid1MouseWheel(Sender: TObject; Shift: TShiftState;
  WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
begin
  AtualizaGridProblemas;
end;

procedure TformPrincipal.edtPesquisaModuloChange(Sender: TObject);
begin
  with dmQuerys.qModulos do
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
    with dmQuerys.qProblemas do
    begin
      close;
      sql.Clear;
      Sql.Add('select * from problema where pr_problema like :ParamProblema');
      ParamByName('ParamProblema').AsString := '%' + edtPesquisaProblema.Text + '%';
      Open;
    end;
  end;

  if rdbtnFiltroPesquisaProblemas.ItemIndex = 1 then
  begin
    with dmQuerys.qProblemas do
    begin
      close;
      sql.Clear;
      Sql.Add('select * from problema where pr_problema like :ParamProblema and pr_modulo = :ParamProblema1');
      ParamByName('ParamProblema').AsString := '%' + edtPesquisaProblema.Text + '%';
      ParamByName('ParamProblema1').AsString := DBGrid1.Columns[0].Field.Value;
      Open;
    end;
  end;
end;

procedure TformPrincipal.FormShow(Sender: TObject);
begin
  PreencheCBModulos;
end;

procedure TformPrincipal.AtivaBotoesProblema;
begin
  btnNovoProblema.Enabled := True;
  btnSalvarProblema.Enabled := True;
  btnCancelarProblema.Enabled := True;
  btnExcluirProblema.Enabled := True;
end;

procedure TformPrincipal.AtualizaGridProblemas;
begin
  with dmQuerys.qProblemas do
  begin
    close;
    sql.Clear;
    Sql.Add('select * from problema where pr_modulo = :ParamModulo');
    ParamByName('ParamModulo').AsString := DBGrid1.Columns[0].Field.Value;
    Open;
  end;

  AtivaBotoesProblema;
end;

procedure TformPrincipal.PreencheCBModulos;
begin
  cbModulos.Clear;

  with dmQuerys.qComboModulos do
  begin
    Close;
    SQL.Clear;
    SQL.ADD('Select * from modulos_problemas');
    Open;
    First;
    while not dmQuerys.qComboModulos.Eof do
    begin
      cbModulos.items.add(dmquerys.qComboModulos['mo_nome']);
      Next;
    end;
  end;
end;
procedure TformPrincipal.btnCancelarModuloClick(Sender: TObject);
begin
  dmQuerys.qModulos.Cancel;
end;

procedure TformPrincipal.btnCancelarProblemaClick(Sender: TObject);
begin
  dmQuerys.qProblemas.Cancel;
end;

procedure TformPrincipal.btnExcluirModuloClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja excluir este módulo?', 'Excluir',
    + MB_ICONQUESTION + MB_YESNO) = MrYes then
    begin
      dmQuerys.qModulos.Delete;
    end;
end;

procedure TformPrincipal.btnExcluirProblemaClick(Sender: TObject);
begin
   if Application.MessageBox('Deseja excluir este problema?', 'Excluir',
    + MB_ICONQUESTION + MB_YESNO) = MrYes then
    begin
      dmQuerys.qProblemas.Delete;
    end;
end;

procedure TformPrincipal.btnNovoModuloClick(Sender: TObject);
begin
  dmQuerys.qModulos.Insert;
end;

procedure TformPrincipal.btnNovoProblemaClick(Sender: TObject);
begin
  dmQuerys.qProblemas.Insert;
  PreencheCBModulos;
  edtTituloProblema.SetFocus;
end;

procedure TformPrincipal.btnSalvarModuloClick(Sender: TObject);
begin
  dmQuerys.qModulos.Post;
end;

procedure TformPrincipal.btnSalvarProblemaClick(Sender: TObject);
begin
  dmQuerys.qProblemas.Post;
end;

end.
