unit uControllerModulo;

interface

uses uDAOModulo, System.Generics.Collections, uModulo, Datasnap.DBClient,
  Data.DB;

type
  TControllerModulo = class
  private
    FDAOModulo: TDAOModulo;
  public
    function BuscaTabelaModulos: TDataSource;
    constructor Create;
    destructor Destroy; override;
  end;

implementation

uses
  Vcl.Dialogs;

{ TControllerModulo }

function TControllerModulo.BuscaTabelaModulos: TDataSource;
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
