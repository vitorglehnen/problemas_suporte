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
    function BuscaTabelaProblemasPorFiltro(aProblema: TProblema): TDataSource;
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

function TDAOGridProblema.BuscaTabelaProblemasPorFiltro(
  aProblema: TProblema): TDataSource;
begin
  FQuery := FConn.CriarQuery;
  FDataSource := FConn.CriarDataSource;

  FQuery.SQL.Text := 'SELECT titulo FROM problemas WHERE ' +
       'CAST(cod_prob AS VARCHAR(10)) like :cod_prob || ''%''' +
       'OR UPPER(titulo) like UPPER(:titulo) || ''%''';
//       'titulo = :titulo OR ' +
//       'chamado = :chamado OR ' +
//       'detalhes = :detalhes OR ' +
//       'solucao = :solucao OR ' +
//       'datacr = :datacr';

  FQuery.ParamByName('cod_prob').AsInteger := aProblema.Codigo;
  FQuery.ParamByName('titulo').AsString := aProblema.Titulo;
//  FQuery.ParamByName('chamado').AsString := aProblema.Chamado;
//  FQuery.ParamByName('detalhes').AsStream := aProblema.Detalhes;
//  FQuery.ParamByName('solucao').AsStream := aProblema.Solucao;
//  FQuery.ParamByName('datacr').AsDate := aProblema.Data;

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
