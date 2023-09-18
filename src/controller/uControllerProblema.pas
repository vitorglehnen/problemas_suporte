unit uControllerProblema;

interface

uses
  FireDAC.Comp.Client,
  Data.DB,
  uProblema,
  uDAOGridProblema,
  uDAOProblema,
  uImagemProblema,
  uDAOImagemProblema,
  System.Classes;

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
    function BuscaImagens(aCodigoProblema: Integer): TStringList;
    function BuscaTabelaProblemasPorFiltro(aProblema: TProblema; aColuna: String; aFiltro: String): TDataSource;
    function BuscaProximoCodigoImagem: String;
    procedure InsertImagem(aImagem: TImagemProblema);
    procedure DeleteImagem(aImagemProblema: TImagemProblema);

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

  while not aImagens.Eof do
  begin
    aListaImagens.Add(aImagens.FieldByName('imagem').Value);
    aImagens.Next;
  end;

  Result := aListaImagens;
end;

function TControllerProblema.BuscaProximoCodigoImagem: String;
begin
  Result := FDAOImagemProblema.BuscaProximoCodigo;
end;

function TControllerProblema.BuscaTabelaProblemas: TDataSource;
begin
  Result := FDAOGridProblema.BuscaTabelaProblemas;
end;

function TControllerProblema.BuscaTabelaProblemasPorFiltro(
  aProblema: TProblema; aColuna: String; aFiltro: String): TDataSource;
begin
  Result := FDAOGridProblema.BuscaTabelaProblemasPorFiltro(aProblema, aColuna, aFiltro);
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

procedure TControllerProblema.DeleteImagem(aImagemProblema: TImagemProblema);
begin
  FDAOImagemProblema.DeleteImagem(aImagemProblema);
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

end.
