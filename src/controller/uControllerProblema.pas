unit uControllerProblema;

interface

uses
  FireDAC.Comp.Client,
  Data.DB,
  uProblema,
  uDAOGridProblema,
  uDAOProblema,
  uImagemProblema,
  uDAOImagemProblema, System.Classes;

type
  TControllerProblema = class
  private
    FDAOProblema: TDaoProblema;
    FDAOGridProblema: TDAOGridProblema;
    FDAOImagemProblema: TDAOImagemProblema;
    FListaImagens: TStringList;
  public
    function BuscaTabelaProblemasPorModulo(aNomeModulo: String): TDataSource;
    function CarregaDadosProblema(aTituloProblema: String): TDataSource;
    function BuscaTabelaProblemas : TDataSource;
    function BuscaQuantidadeProblemas : TDataSource;
    function BuscaImagens(aCodigoProblema: Integer): TStringList;
    procedure InsertProblema(aProblema: TProblema);
    procedure InsertImagem(aImagem: TImagemProblema);
    procedure UpdateProblema(aProblema: TProblema);
    procedure DeleteProblema(aProblema: TProblema);
    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TControllerProblemas }

function TControllerProblema.BuscaImagens(
  aCodigoProblema: Integer): TStringList;
begin
  var aImagens: TDataSet := FDAOImagemProblema.BuscaImagens(aCodigoProblema).DataSet;
  var aListaImagens: TStringList:= TStringList.Create;

  FListaImagens := TStringList.Create;

  while not aImagens.Eof do
  begin
    aListaImagens.Add(aImagens.FieldByName('imagem').Value);
    aImagens.Next;
  end;

  Result := aListaImagens;
end;

function TControllerProblema.BuscaQuantidadeProblemas: TDataSource;
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
  FDAOImagemProblema := TDAOImagemProblema.Create;
end;

procedure TControllerProblema.DeleteProblema(aProblema: TProblema);
begin
  FDAOProblema.DeleteProblema(aProblema);
end;

destructor TControllerProblema.Destroy;
begin
  FListaImagens.Free;
  FDAOProblema.Free;
  FDAOGridProblema.Free;
  FDAOImagemProblema.Free;
  inherited;
end;

procedure TControllerProblema.InsertImagem(aImagem: TImagemProblema);
begin
  FDAOImagemProblema.InsertImagem(aImagem);
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
