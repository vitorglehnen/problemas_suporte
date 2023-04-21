unit DAOProblema;

interface

uses
  FireDAC.Comp.Client, uConexao, Data.DB, uProblema;

type
  TDAOProblema = class
  private
    FConn: TConexao;
    FQuery: TFDQuery;
    FDataSource: TDataSource;
  public
    function BuscaTabelaProblemasPorModulo(aNomeModulo: String): TDataSource;
    function CarregaDadosProblema(aTituloProblema: String): TDataSource;
    procedure InsertProblema(aProblema: TProblema);
    constructor Create;
    destructor Destroy; override;
  end;

implementation

uses
  System.SysUtils;

{ TDAOProblemas }

function TDAOProblema.BuscaTabelaProblemasPorModulo(aNomeModulo: String)
  : TDataSource;
begin
  FQuery := FConn.CriarQuery;

  FQuery.SQL.Text := 'SELECT titulo FROM problemas ' +
    'JOIN modulos ON problemas.cod_mod = modulos.cod_mod ' +
    'WHERE modulos.nome = :NomeModulo';
  FQuery.ParamByName('NomeModulo').AsString := aNomeModulo;
  FQuery.Open;
  FQuery.FetchAll;

  FDataSource.DataSet := FQuery;

  Result := FDataSource;
end;

function TDAOProblema.CarregaDadosProblema(aTituloProblema: String)
  : TDataSource;
begin
  FQuery := FConn.CriarQuery;

  FQuery.SQL.Text := 'SELECT * FROM problemas WHERE titulo = :TituloProblema';
  FQuery.ParamByName('TituloProblema').AsString := UpperCase(aTituloProblema);
  FQuery.Open;

  FDataSource.DataSet := FQuery;

  Result := FDataSource;
end;

constructor TDAOProblema.Create;
begin
  FConn := TConexao.Create;
  FDataSource := TDataSource.Create(nil);
end;

destructor TDAOProblema.Destroy;
begin
  FConn.Free;
  FDataSource.Free;
  inherited;
end;

procedure TDAOProblema.InsertProblema(aProblema: TProblema);
begin
  FQuery := FConn.CriarQuery;

  FQuery.SQL.Text :=
    'INSERT INTO problemas ' +
    '(cod_mod, titulo, chamado, detalhes, solucao)' +
    'VALUES (SELECT cod_mod FROM modulos WHERE nome = :nome_mod, :titulo, :chamado, :detalhes, :solucao)';

  FQuery.ParamByName('nome_mod').AsString := aProblema.Modulo;
  FQuery.ParamByName('titulo').AsString := aProblema.Titulo;
  FQuery.ParamByName('chamado').AsString := aProblema.Chamado;
  FQuery.ParamByName('detalhes').AsString := aProblema.Detalhes;
  FQuery.ParamByName('solucao').AsString := aProblema.Solucao;

  FQuery.ExecSQL;
end;

end.
