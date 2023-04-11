unit DAOModulo;

interface

uses uConexao, uModulo, FireDAC.Comp.Client, Vcl.Dialogs, Data.DB;

type
  TDAOModulo = Class
  private
    FConn: TConexao;
    FQuery: TFDQuery;
  public
    function BuscaTabelaModulos : TFDQuery;
    constructor Create;
    destructor Destroy; override;
  End;

implementation

{ TDAOModulo }

function TDAOModulo.BuscaTabelaModulos : TFDQuery;
begin
  FQuery:= FConn.CriarQuery;

  FQuery.Open('SELECT nome FROM modulos ORDER BY nome');
  FQuery.FetchAll;

  Result:= FQuery;
end;

constructor TDAOModulo.Create;
begin
  FConn:= TConexao.Create;
end;

destructor TDAOModulo.Destroy;
begin
  FConn.Free;
  FQuery.Free;
  inherited;
end;

end.
