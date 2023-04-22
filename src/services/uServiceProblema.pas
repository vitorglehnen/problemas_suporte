unit uServiceProblema;

interface

uses
  Data.DB, uProblema, uDAOGridProblema, uDAOProblema;

type
  TServiceProblema = class
  private
    FDAOGridProblema: TDAOGridProblema;
    FDAOProblema: TDAOProblema;
  public
    function BuscaTabelaProblemasPorModulo(aNomeModulo: String): TDataSource;
    function CarregaDadosProblema(aTituloProblema: String): TDataSource;
    function BuscaTabelaProblemas : TDataSource;
    procedure InsertProblema(aProblema: TProblema);

    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TServiceProblema }

function TServiceProblema.BuscaTabelaProblemas: TDataSource;
begin
  Result := FDAOGridProblema.BuscaTabelaProblemas;
end;

function TServiceProblema.BuscaTabelaProblemasPorModulo(aNomeModulo: String): TDataSource;
begin
  Result := FDAOGridProblema.BuscaTabelaProblemasPorModulo(aNomeModulo);
end;

function TServiceProblema.CarregaDadosProblema(
  aTituloProblema: String): TDataSource;
begin
  Result := FDAOProblema.CarregaDadosProblema(aTituloProblema);
end;

constructor TServiceProblema.Create;
begin
  FDAOGridProblema:= TDAOGridProblema.Create;
  FDAOProblema:= TDAOProblema.Create;
end;

destructor TServiceProblema.Destroy;
begin
  FDAOGridProblema.Free;
  FDAOProblema.Free;
  inherited;
end;

procedure TServiceProblema.InsertProblema(aProblema: TProblema);
begin
  FDAOProblema.InsertProblema(aProblema);
end;

end.
