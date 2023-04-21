unit uServiceProblema;

interface

uses
  DAOProblema, Data.DB, uProblema;

type
  TServiceProblema = class
  private
    FDAOProblema: TDAOProblema;
  public
    function BuscaTabelaProblemasPorModulo(aNomeModulo: String): TDataSource;
    procedure InsertProblema(aProblema: TProblema);

    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TServiceProblema }

function TServiceProblema.BuscaTabelaProblemasPorModulo(aNomeModulo: String): TDataSource;
begin
  Result := FDAOProblema.BuscaTabelaProblemasPorModulo(aNomeModulo);
end;

constructor TServiceProblema.Create;
begin
  FDAOProblema:= TDAOProblema.Create;
end;

destructor TServiceProblema.Destroy;
begin
  FDAOProblema.Free;
  inherited;
end;

procedure TServiceProblema.InsertProblema(aProblema: TProblema);
begin
  FDAOProblema.InsertProblema(aProblema);
end;

end.
