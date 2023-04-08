unit DAOModulo;

interface

uses uConexao, uModulo, FireDAC.Comp.Client, Vcl.Dialogs, Data.DB;

type
  TDAOModulo = Class
  private
    FConn: TConexao;
    FQuery: TFDQuery;
    FModulo: TModulo;
  public
    function BuscaModulos : TFDQuery;
    constructor Create;
    destructor Destroy; override;
  End;

implementation

{ TDAOModulo }

function TDAOModulo.BuscaModulos : TFDQuery;
begin
  FQuery:= FConn.CriarQuery;

  FQuery.Open('SELECT nome FROM modulos ORDER BY nome');
  FQuery.FetchAll;

  Result:= FQuery;
end;

constructor TDAOModulo.Create;
begin
  FConn:= TConexao.Create;
  FModulo:= TModulo.Create;
end;

destructor TDAOModulo.Destroy;
begin
  FConn.Free;
  FModulo.Free;
  FQuery.Free;
  inherited;
end;

end.
