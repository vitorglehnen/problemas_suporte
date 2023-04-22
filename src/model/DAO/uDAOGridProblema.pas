unit uDAOGridProblema;

interface

uses
  FireDAC.Comp.Client, uConexao, Data.DB, uProblema;

type
  TDAOGridProblema = class
  private
    FConn: TConexao;
    FQuery: TFDQuery;
    FDataSource: TDataSource;
  public
    function BuscaTabelaProblemasPorModulo(aNomeModulo: String): TDataSource;
    function BuscaTabelaProblemas : TDataSource;
    constructor Create;
    destructor Destroy; override;
  end;

implementation

uses
  System.SysUtils;

{ TDAOProblemas }

function TDAOGridProblema.BuscaTabelaProblemas: TDataSource;
begin
  FQuery := FConn.CriarQuery;
  FDataSource := FConn.CriarDataSource;

  FQuery.SQL.Text := 'SELECT titulo FROM PROBLEMAS ORDER BY TITULO';
  FQuery.Open;
  FQuery.FetchAll;

  FDataSource.DataSet := FQuery;

  Result := FDataSource;
end;

function TDAOGridProblema.BuscaTabelaProblemasPorModulo(aNomeModulo: String)
  : TDataSource;
begin
  FQuery := FConn.CriarQuery;
  FDataSource := FConn.CriarDataSource;

  FQuery.SQL.Text := 'SELECT titulo FROM problemas ' +
  'JOIN modulos ON problemas.cod_mod = modulos.cod_mod ' +
  'WHERE modulos.nome = :NomeModulo';
  FQuery.ParamByName('NomeModulo').AsString := aNomeModulo;
  FQuery.Open;
  FQuery.FetchAll;

  FDataSource.DataSet := FQuery;

  Result := FDataSource;
end;

constructor TDAOGridProblema.Create;
begin
  FConn := TConexao.Create;
end;

destructor TDAOGridProblema.Destroy;
begin
  FConn.Free;
  inherited;
end;

end.
