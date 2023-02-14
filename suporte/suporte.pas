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
    DBNavigator1: TDBNavigator;
    Panel7: TPanel;
    DBGrid1: TDBGrid;
    pnlBotoesProblemas: TPanel;
    pnlProblemas: TPanel;
    Panel8: TPanel;
    edtTituloProblema: TDBEdit;
    DBEdit1: TDBEdit;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    cbModulos: TDBComboBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure PreencheCBModulos;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
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
  with dmQuerys.qProblemas do
  begin
    close;
    sql.Clear;
    Sql.Add('select * from problema where pr_modulo = :ParamModulo');
    ParamByName('ParamModulo').AsString := DBGrid1.Columns[0].Field.Value;
    Open;
  end;
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
procedure TformPrincipal.SpeedButton1Click(Sender: TObject);
begin
  dmQuerys.qProblemas.Insert;
  edtTituloProblema.SetFocus;
  PreencheCBModulos;
end;

procedure TformPrincipal.SpeedButton2Click(Sender: TObject);
begin
  dmQuerys.qProblemas.Post;
end;

end.
