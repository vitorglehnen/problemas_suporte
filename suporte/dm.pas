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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmQuerys: TdmQuerys;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}


end.



