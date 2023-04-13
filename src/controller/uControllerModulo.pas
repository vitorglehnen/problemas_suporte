unit uControllerModulo;

interface

uses uServiceModulo, System.Generics.Collections, uModulo;

type
  TControllerModulo = class
  private
    FServiceModulo: TServiceModulo;
  public
    function BuscaTabelaModulos: TList<TModulo>;
    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TControllerModulo }

function TControllerModulo.BuscaTabelaModulos: TList<TModulo>;
begin
  Result := FServiceModulo.BuscaTabelaModulos;
end;

constructor TControllerModulo.Create;
begin
  FServiceModulo := TServiceModulo.Create;
end;

destructor TControllerModulo.Destroy;
begin
  FServiceModulo.Free;
  inherited;
end;

end.
