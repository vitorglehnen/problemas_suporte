unit uServiceProblema;

interface

uses
  DAOProblema, Data.DB;

type
  TServiceProblema = class
  private
    FDaoProblema: TDAOProblema;
  public
    function BuscaTabelaProblemasPorModulo: TDataSource;

    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TServiceProblema }

function TServiceProblema.BuscaTabelaProblemasPorModulo: TDataSource;
begin
  Result := FDaoProblema.TabelaProblemasPorModulo();
end;

constructor TServiceProblema.Create;
begin
  FDaoProblema:= TDAOProblema.Create;
end;

destructor TServiceProblema.Destroy;
begin
  FDaoProblema.Free;
  inherited;
end;

end.
