unit uControllerModulo;

interface

uses uDAOModulo, System.Generics.Collections, uModulo, Datasnap.DBClient,
  Data.DB;

type
  TControllerModulo = class
  private
    FDAOModulo: TDAOModulo;
  public
    function BuscaTabelaModulos: TDataSource;
    procedure DeleteModulo(aModulo : TModulo);
    constructor Create;
    destructor Destroy; override;
  end;

implementation

uses
  Vcl.Dialogs;

{ TControllerModulo }

function TControllerModulo.BuscaTabelaModulos: TDataSource;
begin
  Result := FDAOModulo.BuscaTabelaModulos;
end;

constructor TControllerModulo.Create;
begin
  FDAOModulo := TDAOModulo.Create;
end;

procedure TControllerModulo.DeleteModulo(aModulo : TModulo);
begin
  try
    FDAOModulo.DeleteModulo(aModulo);
  except
    MessageDlg('Não é possível excluir um módulo com problemas vinculados!', mtInformation, [mbOK], 0);
  end;
end;

destructor TControllerModulo.Destroy;
begin
  FDAOModulo.Free;
  inherited;
end;

end.
