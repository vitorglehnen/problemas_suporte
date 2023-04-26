unit uControllerProblema;

interface

uses
  FireDAC.Comp.Client, Data.DB, uProblema, uServiceProblema;

type
  TControllerProblema = class
  private
    FServiceProblema: TServiceProblema;
  public
    function BuscaTabelaProblemasPorModulo(aNomeModulo: String): TDataSource;
    function CarregaDadosProblema(aTituloProblema: String): TDataSource;
    function BuscaTabelaProblemas : TDataSource;
    procedure InsertProblema(aProblema: TProblema);
    procedure UpdateProblema(aProblema: TProblema);
    procedure DeleteProblema(aProblema: TProblema);
    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TControllerProblemas }

function TControllerProblema.BuscaTabelaProblemas: TDataSource;
begin
  Result := FServiceProblema.BuscaTabelaProblemas;
end;

function TControllerProblema.BuscaTabelaProblemasPorModulo(aNomeModulo: String): TDataSource;
begin
  Result := FServiceProblema.BuscaTabelaProblemasPorModulo(aNomeModulo);
end;

function TControllerProblema.CarregaDadosProblema(
  aTituloProblema: String): TDataSource;
begin
  Result:= FServiceProblema.CarregaDadosProblema(aTituloProblema);
end;

constructor TControllerProblema.Create;
begin
  FServiceProblema := TServiceProblema.Create;
end;

procedure TControllerProblema.DeleteProblema(aProblema: TProblema);
begin
  FServiceProblema.DeleteProblema(aProblema);
end;

destructor TControllerProblema.Destroy;
begin
  FServiceProblema.Free;
  inherited;
end;

procedure TControllerProblema.InsertProblema(aProblema: TProblema);
begin
  FServiceProblema.InsertProblema(aProblema);
end;

procedure TControllerProblema.UpdateProblema(aProblema: TProblema);
begin
  FServiceProblema.UpdateProblema(aProblema);
end;

end.
