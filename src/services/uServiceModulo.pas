unit uServiceModulo;

interface

uses
  DAOModulo, uModulo, System.Generics.Collections, Datasnap.DBClient, Data.DB;

type
  TServiceModulo = class
  private
    FDaoModulo: TDaoModulo;
  public
    function BuscaTabelaModulos: TDataSource;
    procedure InsertModulo(aNomeModulo:String);
    procedure UpdateModulo(aNomeModuloAnt: String; aNomeModuloAtt: String);
    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TServiceModulo }

function TServiceModulo.BuscaTabelaModulos: TDataSource;
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

procedure TServiceModulo.InsertModulo(aNomeModulo:String);
begin
  FDaoModulo.InsertModulo(aNomeModulo);
end;

procedure TServiceModulo.UpdateModulo(aNomeModuloAnt, aNomeModuloAtt: String);
begin
  FDaoModulo.UpdateModulo(aNomeModuloAnt, aNomeModuloAtt);
end;

end.
