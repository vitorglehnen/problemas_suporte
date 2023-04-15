unit uServiceProblema;

interface

uses
  DAOProblema, Data.DB;

type
  TServiceProblema = class
  private
    FDAOProblema: TDAOProblema;
  public
    function BuscaTabelaProblemasPorModulo(aNomeModulo: String): TDataSource;

    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TServiceProblema }

function TServiceProblema.BuscaTabelaProblemasPorModulo(aNomeModulo: String): TDataSource;
begin
  Result := FDAOProblema.TabelaProblemasPorModulo(aNomeModulo);
end;

constructor TServiceProblema.Create;
begin
  FDAOProblema:= TDAOProblema.Create;
end;

destructor TServiceProblema.Destroy;
begin
  FDAOProblema.Free;
  inherited;
end;

end.
