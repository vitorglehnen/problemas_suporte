unit Suporte.Connection.Connection;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet, FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.Phys.IBBase;

type
  TdmConnection = class(TDataModule)
    dsModulos: TDataSource;
    qModulos: TFDQuery;
    conDBSuporte: TFDConnection;
    qComboModulos: TFDQuery;
    qProblemas: TFDQuery;
    dsProblemas: TDataSource;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    qProblemasPR_MODULO: TStringField;
    qProblemasPR_TITULO: TStringField;
    qProblemasPR_PROBLEMA: TStringField;
    qProblemasPR_SOLUCAO: TStringField;
    qProblemasPR_CHAMADO: TIntegerField;
    qProblemasPR_DATA: TDateField;
    qProblemasPR_PRIMG: TBlobField;
    qProblemasPR_SOLUCAOIMG: TBlobField;
    procedure qProblemasAfterInsert(DataSet: TDataSet);
    procedure qProblemasBeforeCancel(DataSet: TDataSet);
    procedure qProblemasBeforeEdit(DataSet: TDataSet);
    procedure qProblemasBeforePost(DataSet: TDataSet);
    procedure qModulosAfterScroll(DataSet: TDataSet);
    procedure qProblemasAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
    procedure InverteBotoesCrudProblemas;
  public
    { Public declarations }
  end;

var
  connection : TdmConnection;

implementation

uses
  Suporte.View.Pages.Form.Main;

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TdmConnection }

procedure TdmConnection.InverteBotoesCrudProblemas;
begin
  formPrincipal.btnNovoProblema.Enabled := not formPrincipal.btnNovoProblema.Enabled;
  formPrincipal.btnExcluirProblema.Enabled := not formPrincipal.btnExcluirProblema.Enabled;
  formPrincipal.btnSalvarProblema.Enabled := not formPrincipal.btnSalvarProblema.Enabled;
  formPrincipal.btnCancelarProblema.Enabled := not formPrincipal.btnCancelarProblema.Enabled;
end;

procedure TdmConnection.qModulosAfterScroll(DataSet: TDataSet);
begin
  formPrincipal.AtualizaGridProblemas;
  formPrincipal.cardPanelProblemas.ActiveCard := formPrincipal.pnlCadastroProblema;
end;

procedure TdmConnection.qProblemasAfterInsert(DataSet: TDataSet);
begin
  InverteBotoesCrudProblemas;
  formPrincipal.edtHoraProblema.Text := DateToStr(date);
end;

procedure TdmConnection.qProblemasAfterScroll(DataSet: TDataSet);
begin
  formPrincipal.cardPanelProblemas.ActiveCard := formPrincipal.pnlCadastroProblema;
end;

procedure TdmConnection.qProblemasBeforeCancel(DataSet: TDataSet);
begin
  InverteBotoesCrudProblemas;
end;

procedure TdmConnection.qProblemasBeforeEdit(DataSet: TDataSet);
begin
  InverteBotoesCrudProblemas;
end;

procedure TdmConnection.qProblemasBeforePost(DataSet: TDataSet);
begin
  InverteBotoesCrudProblemas;
end;

end.



