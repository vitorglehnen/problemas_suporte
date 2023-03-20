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
    btnNovoProblema: TSpeedButton;
    btnExcluirProblema: TSpeedButton;
    pnlProblemas: TPanel;
    Panel8: TPanel;
    edtTituloProblema: TDBEdit;
    DBEdit1: TDBEdit;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    cbModulos: TDBComboBox;
    DBNavigator2: TDBNavigator;
    procedure PreencheCBModulos;
    procedure FormCreate(Sender: TObject);
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

procedure TformPrincipal.FormCreate(Sender: TObject);
begin
  PreencheCBModulos;
end;

procedure TformPrincipal.PreencheCBModulos;
begin
  with dmquerys.qComboModulos do
    begin
      Active := True;
      SQL.Clear;
      SQL.ADD('Select nome from modulos');
      Open;
      //cbModulos.items.add(dmquerys.qModulos['nome']);
    end;

end;

end.
