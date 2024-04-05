unit uDAOUtils;

interface

uses
  FireDAC.Comp.Client,
  uConexao,
  Data.DB,
  uProblema,
  Vcl.Dialogs;

type
  TDAOUtils = class
  private
    FConn: TConexao;
    FQuery: TFDQuery;
    FDataSource: TDataSource;

  public
    function RetornaGeneratorProblema: integer;

    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TDAOProblema }

constructor TDAOUtils.Create;
begin
  { Método construtor da classe }

  FConn := TConexao.Create;
end;

destructor TDAOUtils.Destroy;
begin
  { Método destrutor da classe }

  FConn.Free;

  inherited;
end;

function TDAOUtils.RetornaGeneratorProblema: integer;
begin
  FQuery := FConn.CriarQuery;

  FQuery.SQL.Text := 'SELECT GEN_ID(GEN_PROBLEMAS_ID, 0) FROM RDB$DATABASE';
  FQuery.Open;

  FConn.GetConn.Commit;

  Result := FQuery.Fields[0].AsInteger;
end;

end.
