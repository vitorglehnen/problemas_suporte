unit dm;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet;

type
  TdmQuerys = class(TDataModule)
    dsModulos: TDataSource;
    qModulos: TFDQuery;
    conDBSuporte: TFDConnection;
    qComboModulos: TFDQuery;
    qProblemas: TFDQuery;
    dsProblemas: TDataSource;
    qProblemasid: TFDAutoIncField;
    qProblemaspr_modulo: TStringField;
    qProblemaspr_titulo: TStringField;
    qProblemaspr_problema: TMemoField;
    qProblemaspr_solucao: TMemoField;
    qProblemaspr_data: TDateTimeField;
    qProblemaspr_primg: TBlobField;
    qProblemaspr_solucaoimg: TBlobField;
    qProblemaspr_numerochamado: TIntegerField;
    procedure qModulosAfterScroll(DataSet: TDataSet);
    procedure qProblemasAfterInsert(DataSet: TDataSet);
    procedure qProblemasBeforePost(DataSet: TDataSet);
    procedure qProblemasBeforeCancel(DataSet: TDataSet);
    procedure qProblemasBeforeEdit(DataSet: TDataSet);
  private
    { Private declarations }
    procedure InverteBotoesCrudProblemas;
  public
    { Public declarations }
  end;

var
  dmQuerys: TdmQuerys;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses suporte;

{$R *.dfm}


procedure TdmQuerys.InverteBotoesCrudProblemas;
begin
  formPrincipal.btnNovoProblema.Enabled := not formPrincipal.btnNovoProblema.Enabled;
  formPrincipal.btnExcluirProblema.Enabled := not formPrincipal.btnExcluirProblema.Enabled;
  formPrincipal.btnSalvarProblema.Enabled := not formPrincipal.btnSalvarProblema.Enabled;
  formPrincipal.btnCancelarProblema.Enabled := not formPrincipal.btnCancelarProblema.Enabled;
end;

procedure TdmQuerys.qModulosAfterScroll(DataSet: TDataSet);
begin
  formPrincipal.AtualizaGridProblemas;
end;

procedure TdmQuerys.qProblemasAfterInsert(DataSet: TDataSet);
begin
  InverteBotoesCrudProblemas;
end;

procedure TdmQuerys.qProblemasBeforeCancel(DataSet: TDataSet);
begin
  InverteBotoesCrudProblemas;
end;

procedure TdmQuerys.qProblemasBeforeEdit(DataSet: TDataSet);
begin
  InverteBotoesCrudProblemas;
end;

procedure TdmQuerys.qProblemasBeforePost(DataSet: TDataSet);
begin
  InverteBotoesCrudProblemas;
end;

end.



