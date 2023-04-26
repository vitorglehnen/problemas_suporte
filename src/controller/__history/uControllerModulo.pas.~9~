unit uControllerModulo;

interface

uses uServiceModulo, System.Generics.Collections, uModulo, Datasnap.DBClient,
  Data.DB;

type
  TControllerModulo = class
  private
    FServiceModulo: TServiceModulo;
  public
    function BuscaTabelaModulos: TDataSource;
    procedure InsertModulo(aNomeModulo:String);
    procedure UpdateModulo(aNomeModuloAnt: String; aNomeModuloAtt: String);
    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TControllerModulo }

function TControllerModulo.BuscaTabelaModulos: TDataSource;
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

procedure TControllerModulo.InsertModulo(aNomeModulo: String);
begin
  FServiceModulo.InsertModulo(aNomeModulo);
end;

procedure TControllerModulo.UpdateModulo(aNomeModuloAnt,
  aNomeModuloAtt: String);
begin
  FServiceModulo.UpdateModulo(aNomeModuloAnt, aNomeModuloAtt);
end;

end.
