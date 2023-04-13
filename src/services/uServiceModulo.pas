unit uServiceModulo;

interface

uses
  DAOModulo, uModulo, System.Generics.Collections;

type
  TServiceModulo = class
  private
    FDaoModulo: TDaoModulo;
  public
    function BuscaTabelaModulos: TList<TModulo>;

    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TServiceModulo }

function TServiceModulo.BuscaTabelaModulos: TList<TModulo>;
begin
  Result := FDaoModulo.BuscaTabelaModulos;
end;

constructor TServiceModulo.Create;
begin
  FDaoModulo := TDaoModulo.Create;
end;

destructor TServiceModulo.Destroy;
begin
  FDaoModulo.Free;
  inherited;
end;

end.
