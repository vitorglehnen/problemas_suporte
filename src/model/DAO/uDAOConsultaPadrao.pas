unit uDAOConsultaPadrao;

interface

uses
  FireDAC.Comp.Client, uConexao, Data.DB, uProblema, Vcl.Dialogs;

type
  TDAOProblema = class
  private
    FConn: TConexao;
    FQuery: TFDQuery;
    FDataSource: TDataSource;

    procedure InsertConsultaPadrao(aDescricao: String; aIndice: Integer);
  public
    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TDAOProblema }


constructor TDAOProblema.Create;
begin
  FConn := TConexao.Create;
end;

destructor TDAOProblema.Destroy;
begin
  FConn.Free;

  inherited;
end;

procedure TDAOProblema.InsertConsultaPadrao(aDescricao: String; aIndice: Integer);
begin
  FQuery := FConn.CriarQuery;
  FDataSource := FConn.CriarDataSource;

  FQuery.SQL.Text := 'UPDATE conspadrao c SET c.indice = :indice WHERE c.descricao = :descricao';
  FQuery.ParamByName('indice').AsInteger := aIndice;
  FQuery.ParamByName('descricao').AsString := aDescricao;
  FQuery.Open;

  FDataSource.DataSet := FQuery;
end;

end.unit Unit1;

interface

implementation

end.
