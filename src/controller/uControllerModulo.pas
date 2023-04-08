unit uControllerModulo;

interface

uses DAOModulo, FireDAC.Comp.Client;

type
  TControllerModulo = class
  private
    FDAOModulo: TDAOModulo;
  public
    function BuscaTabelaModulos: TFDQuery;
    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TControllerModulo }

function TControllerModulo.BuscaTabelaModulos: TFDQuery;
begin
  Result := FDAOModulo.BuscaTabelaModulos;
end;

constructor TControllerModulo.Create;
begin
  FDAOModulo := TDAOModulo.Create;
end;

destructor TControllerModulo.Destroy;
begin
  FDAOModulo.Free;
  inherited;
end;

end.
