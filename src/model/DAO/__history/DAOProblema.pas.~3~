unit DAOProblema;

interface

uses
  FireDAC.Comp.Client, uConexao;

type
  TDAOProblema = class
  private
    FConn: TConexao;
    FQuery: TFDQuery;
  public
    function BuscaProblemas : TFDQuery;
    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TDAOProblemas }

function TDAOProblema.BuscaProblemas: TFDQuery;
begin
  FQuery:= FConn.CriarQuery;

  FQuery.Open('SELECT titulo FROM problemas ORDER BY titulo');
  FQuery.FetchAll;

  Result:= FQuery;
end;

constructor TDAOProblema.Create;
begin
  FConn:= TConexao.Create;
end;

destructor TDAOProblema.Destroy;
begin
  FConn.Free;
  FQuery.Free;
  inherited;
end;

end.
