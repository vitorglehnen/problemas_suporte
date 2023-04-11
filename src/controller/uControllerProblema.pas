unit uControllerProblema;

interface

uses
  FireDAC.Comp.Client, DAOProblema;

type
  TControllerProblema = class
  private
    FDAOProblema: TDAOProblema;
  public
    function TabelaProblemasPorModulo(aNomeModulo: String): TFDQuery;
    function CarregaDadosProblema(aTituloProblema: String): TFDQuery;
    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TControllerProblemas }

function TControllerProblema.TabelaProblemasPorModulo(aNomeModulo: String): TFDQuery;
begin
  Result := FDAOProblema.TabelaProblemasPorModulo(aNomeModulo);
end;

function TControllerProblema.CarregaDadosProblema(
  aTituloProblema: String): TFDQuery;
begin
  Result:= FDAOProblema.CarregaDadosProblema(aTituloProblema);
end;

constructor TControllerProblema.Create;
begin
  FDAOProblema := TDAOProblema.Create;
end;

destructor TControllerProblema.Destroy;
begin
  FDAOProblema.Free;
  inherited;
end;

end.