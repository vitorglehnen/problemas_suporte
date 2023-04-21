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
    procedure InsertProblema(aProblema: TProblema);
    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TControllerProblemas }

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

destructor TControllerProblema.Destroy;
begin
  FServiceProblema.Free;
  inherited;
end;

procedure TControllerProblema.InsertProblema(aProblema: TProblema);
begin
  FServiceProblema.InsertProblema(aProblema);
end;

end.
