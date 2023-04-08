unit uControllerProblema;

interface

uses
  FireDAC.Comp.Client, DAOProblema;

type
  TControllerProblema = class
  private
    FDAOProblema: TDAOProblema;
  public
    function BuscaTabelaProblemas: TFDQuery;
    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TControllerProblemas }

function TControllerProblema.BuscaTabelaProblemas: TFDQuery;
begin
  Result := FDAOProblema.BuscaTabelaProblemas;
end;

constructor TControllerProblema.Create;
begin
  FDAOProblema := TDAOProblema.Create;
end;

destructor TControllerProblema.Destroy;
begin
  FDAOProblema.Free;
  inherited;
end;

end.
