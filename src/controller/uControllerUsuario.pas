unit uControllerUsuario;

interface

uses
  uDAOUsuario,
  uUsuario,
  Vcl.Dialogs,
  uDAOConsultaPadrao;

type
  TControllerUsuario = Class
  private
    FDAOUsuario: TDAOUsuario;
    FDAOConsPadrao: TDAOConsPadrao;
  public
    procedure AlteraIndiceConsultaPadrao(aCodUsuario: Integer; aIndice: Integer; aDescricao: String);

    function RetornaCodUsuario(aUsuario: TUsuario): Integer;
    function RetornaIndiceConsultaPadrao(aCodUsuario: Integer; aDescricao: String): Integer;

    constructor Create;
    destructor Destroy; override;
  End;

implementation

{ TControllerUsuario }

procedure TControllerUsuario.AlteraIndiceConsultaPadrao(aCodUsuario,
  aIndice: Integer; aDescricao: String);
begin
  FDAOConsPadrao.UpdateConsultaPadrao(aCodUsuario, aIndice, aDescricao);
end;

constructor TControllerUsuario.Create;
begin
  FDAOUsuario := TDAOUsuario.Create;
  FDAOConsPadrao := TDAOConsPadrao.Create;
end;

destructor TControllerUsuario.Destroy;
begin
  FDAOUsuario.Free;
  FDAOConsPadrao.Free;
  inherited;
end;

function TControllerUsuario.RetornaCodUsuario(aUsuario: TUsuario): Integer;
begin
  Result := FDAOUsuario.RetornaCodUsuario(aUsuario.Nome).DataSet.FieldByName('cod_usu').AsInteger;
end;

function TControllerUsuario.RetornaIndiceConsultaPadrao(aCodUsuario: Integer;
  aDescricao: String): Integer;
begin
  Result := FDAOConsPadrao.BuscaConsultaPadrao(aCodUsuario, aDescricao).DataSet.FieldByName('indice').AsInteger;
end;

end.
