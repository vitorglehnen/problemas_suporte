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
    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TControllerProblemas }

function TControllerProblema.TabelaProblemasPorModulo(aNomeModulo: String): TFDQuery;
begin
  Result := FDAOProblema.TabelaProblemasPorModulo(aNomeModulo);
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
