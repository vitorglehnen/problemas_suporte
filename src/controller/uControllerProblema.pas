unit uControllerProblema;

interface

uses
  FireDAC.Comp.Client,
  Data.DB,
  uProblema,
  uDAOGridProblema,
  uImagemProblema,
  uDAOImagemProblema,
  System.Classes, uUsuario;

type
  TControllerProblema = class
  private
    FDAOGridProblema: TDAOGridProblema;
    FDAOImagemProblema: TDAOImagemProblema;
    FListaImagens: TStringList;
  public
    function BuscaTabelaProblemasPorModulo(aNomeModulo: String): TDataSource;
    function BuscaTabelaProblemas : TDataSource;
    function BuscaImagens(aCodigoProblema: Integer): TStringList;
    function BuscaTabelaProblemasPorFiltro(aProblema: TProblema; aColuna: String; aFiltro: String): TDataSource;
    function BuscaProximoCodigoImagem: String;
    function BuscaQtdeTotalProblemas: Integer;
    function BuscaQtdeTotalProblemasPorUsuario(aUsuario: TUsuario): Integer;
    procedure InsertImagem(aImagem: TImagemProblema);
    procedure DeleteImagem(aImagemProblema: TImagemProblema);

    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TControllerProblemas }

constructor TControllerProblema.Create;
begin
  { Método construtor da classe }

  FDAOGridProblema := TDAOGridProblema.Create;
  FDAOImagemProblema := TDAOImagemProblema.Create;
end;

destructor TControllerProblema.Destroy;
begin
  { Método destrutor da classe }

  FListaImagens.Free;
  FDAOGridProblema.Free;
  FDAOImagemProblema.Free;

  inherited;
end;

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

function TControllerProblema.BuscaQtdeTotalProblemas: Integer;
begin
  Result := FDAOGridProblema.BuscaQtdeTotalProblemas.DataSet.Fields[0].AsInteger;
end;

function TControllerProblema.BuscaQtdeTotalProblemasPorUsuario(
  aUsuario: TUsuario): Integer;
begin
  Result := FDAOGridProblema.BuscaQtdeTotalProblemasPorUsuario(aUsuario).DataSet.Fields[0].AsInteger;
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

procedure TControllerProblema.DeleteImagem(aImagemProblema: TImagemProblema);
begin
  FDAOImagemProblema.DeleteImagem(aImagemProblema);
end;

procedure TControllerProblema.InsertImagem(aImagem: TImagemProblema);
begin
  FDAOImagemProblema.InsertImagem(aImagem);
end;

end.
