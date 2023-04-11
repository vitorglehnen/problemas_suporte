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
    function TabelaProblemasPorModulo(aNomeModulo: String): TFDQuery;
    function CarregaDadosProblema(aTituloProblema: String): TFDQuery;
    constructor Create;
    destructor Destroy; override;
  end;

implementation

uses
  System.SysUtils;

{ TDAOProblemas }

function TDAOProblema.TabelaProblemasPorModulo(aNomeModulo: String): TFDQuery;
begin
  FQuery := FConn.CriarQuery;

  FQuery.SQL.Text:=
    'SELECT titulo FROM problemas '+
    'JOIN modulos ON problemas.cod_mod = modulos.cod_mod '+
    'WHERE modulos.nome = :NomeModulo';
  FQuery.ParamByName('NomeModulo').AsString := aNomeModulo;
  FQuery.Open;
  FQuery.FetchAll;

  Result := FQuery;
end;

function TDAOProblema.CarregaDadosProblema(aTituloProblema: String): TFDQuery;
begin
  FQuery:= FConn.CriarQuery;

  FQuery.SQL.Text:='SELECT * FROM problemas WHERE titulo = :TituloProblema';
  FQuery.ParamByName('TituloProblema').AsString:= UpperCase(aTituloProblema);
  FQuery.Open;

  Result:= FQuery;
end;

constructor TDAOProblema.Create;
begin
  FConn := TConexao.Create;
end;

destructor TDAOProblema.Destroy;
begin
  FConn.Free;
  FQuery.Free;
  inherited;
end;

end.
