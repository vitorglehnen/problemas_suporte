unit uControllerUtils;

interface

uses
  System.Generics.Collections,
  Datasnap.DBClient,
  Data.DB,
  System.Classes,
  uDAOUtils;

type
  TControllerUtils = class
  private
    FDAOUtils : TDAOUtils;
  public
    constructor Create;
    destructor Destroy; override;

    function RetornaGeneratorProblema: integer;
  end;

implementation

uses
  Vcl.Dialogs;

{ TControllerUtils }

constructor TControllerUtils.Create;
begin
  { M�todo construtor da classe }

  FDAOUtils := TDAOUtils.Create;
end;

destructor TControllerUtils.Destroy;
begin
  { M�todo destrutor da classe }

  FDAOUtils.Free;

  inherited;
end;

function TControllerUtils.RetornaGeneratorProblema: integer;
begin
  Result := FDAOUtils.RetornaGeneratorProblema;
end;

end.
