unit uControllerUsuario;

interface

uses uDAOUsuario, uUsuario, Vcl.Dialogs;

type
  TControllerUsuario = Class
  private
    FDAOUsuario: TDAOUsuario;
  public
    function ValidaLogin(aUsuario: TUsuario): Boolean;

    constructor Create;
    destructor Destroy; override;
  End;

implementation

{ TControllerUsuario }

constructor TControllerUsuario.Create;
begin
  FDAOUsuario := TDAOUsuario.Create;
end;

destructor TControllerUsuario.Destroy;
begin
  FDAOUsuario.Free;
  inherited;
end;

function TControllerUsuario.ValidaLogin(aUsuario: TUsuario): Boolean;
begin
  var aResultado: Integer := FDAOUsuario.RetornaUsuario(aUsuario).DataSet.FieldByName('COUNT').AsInteger;

  if aResultado > 0 then
    Result := True
  else
    Result := False;
end;

end.
