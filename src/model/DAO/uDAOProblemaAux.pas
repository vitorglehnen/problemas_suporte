unit uDAOProblemaAux;

interface

uses
  FireDAC.Comp.Client, uConexao, Data.DB, uProblema, Vcl.Dialogs;

type
  TDAOProblemaAux = class
  private
    FConn: TConexao;
    FQuery: TFDQuery;
    FDataSource: TDataSource;
  public
    function BuscaProximoCodigoProblema: Integer;
    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TDAOProblema }

function TDAOProblemaAux.BuscaProximoCodigoProblema: Integer;
begin
  FQuery:= FConn.CriarQuery;

  FQuery.SQL.Text := 'SELECT GEN_ID(GEN_PROBLEMAS_ID, 0) FROM RDB$DATABASE';
  FQuery.Open;

  Result := FQuery.fields[0].AsInteger;
end;

constructor TDAOProblemaAux.Create;
begin
  FConn := TConexao.Create;
end;

destructor TDAOProblemaAux.Destroy;
begin
  FConn.Free;
  inherited;
end;

end.
