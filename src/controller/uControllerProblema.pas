unit uControllerProblema;

interface

uses
  FireDAC.Comp.Client, Data.DB, uProblema, uDAOGridProblema, uDAOProblema;

type
  TControllerProblema = class
  private
    FDAOProblema: TDaoProblema;
    FDAOGridProblema: TDAOGridProblema;
  public
    function BuscaTabelaProblemasPorModulo(aNomeModulo: String): TDataSource;
    function CarregaDadosProblema(aTituloProblema: String): TDataSource;
    function BuscaTabelaProblemas : TDataSource;
    function BuscaQuantidadeProblemas : Integer;
    procedure InsertProblema(aProblema: TProblema);
    procedure UpdateProblema(aProblema: TProblema);
    procedure DeleteProblema(aProblema: TProblema);
    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TControllerProblemas }

function TControllerProblema.BuscaQuantidadeProblemas: Integer;
begin
  FDAOProblema.BuscaQuantidadeProblemas;
end;

function TControllerProblema.BuscaTabelaProblemas: TDataSource;
begin
  Result := FDAOGridProblema.BuscaTabelaProblemas;
end;

function TControllerProblema.BuscaTabelaProblemasPorModulo(aNomeModulo: String): TDataSource;
begin
  Result := FDAOGridProblema.BuscaTabelaProblemasPorModulo(aNomeModulo);
end;

function TControllerProblema.CarregaDadosProblema(
  aTituloProblema: String): TDataSource;
begin
  Result:= FDAOProblema.CarregaDadosProblema(aTituloProblema);
end;

constructor TControllerProblema.Create;
begin
  FDAOProblema := TDAOProblema.Create;
  FDAOGridProblema := TDAOGridProblema.Create;
end;

procedure TControllerProblema.DeleteProblema(aProblema: TProblema);
begin
  FDAOProblema.DeleteProblema(aProblema);
end;

destructor TControllerProblema.Destroy;
begin
  FDAOProblema.Free;
  FDAOGridProblema.Free;
  inherited;
end;

procedure TControllerProblema.InsertProblema(aProblema: TProblema);
begin
  FDAOProblema.InsertProblema(aProblema);
end;

procedure TControllerProblema.UpdateProblema(aProblema: TProblema);
begin
  FDAOProblema.UpdateProblema(aProblema);
end;

end.
