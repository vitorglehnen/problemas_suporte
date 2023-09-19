unit uDAOImagemProblema;

interface

uses
  FireDAC.Comp.Client,
  uConexao,
  Data.DB,
  uImagemProblema;

type
  TDAOImagemProblema = class
  private
    FConn: TConexao;
    FQuery: TFDQuery;
    FDataSource: TDataSource;
  public
    procedure InsertImagem(aImagemProblema: TImagemProblema);
    function BuscaImagens(aCodigoProblema: Integer): TDataSource;
    function BuscaProximoCodigo: String;
    procedure DeleteImagem(aImagemProblema: TImagemProblema);
    constructor Create;
    destructor Destroy; override;
  end;

implementation

uses
  Vcl.Dialogs;

{ TDAOImagemProblema }

constructor TDAOImagemProblema.Create;
begin
  { Método construtor da classe }

  FConn := TConexao.Create;
end;

destructor TDAOImagemProblema.Destroy;
begin
  { Método destrutor da classe }

  FConn.Free;

  inherited;
end;

function TDAOImagemProblema.BuscaImagens(aCodigoProblema: Integer): TDataSource;
begin
  FQuery := FConn.CriarQuery;
  FDataSource := FConn.CriarDataSource;

  FQuery.SQL.Text := 'SELECT * FROM probimg WHERE cod_prob = :cod_prob ORDER BY seq_img';
  FQuery.ParamByName('cod_prob').AsInteger := aCodigoProblema;
  FQuery.Open;

  FDataSource.DataSet := FQuery;
  FConn.GetConn.Commit;

  Result := FDataSource;
end;

function TDAOImagemProblema.BuscaProximoCodigo: String;
begin
  FQuery := FConn.CriarQuery;
  FDataSource := FConn.CriarDataSource;

  FQuery.SQL.Text := 'SELECT NEXT VALUE FOR GEN_PROBIMG_ID FROM RDB$DATABASE';
  FQuery.Open;

  FDataSource.DataSet := FQuery;
  FConn.GetConn.Commit;

  Result := FDataSource.DataSet.Fields[0].Value;
end;

procedure TDAOImagemProblema.DeleteImagem(aImagemProblema: TImagemProblema);
begin
  FQuery := FConn.CriarQuery;

  FQuery.SQL.Text := 'DELETE FROM probimg WHERE imagem = :imagem and cod_prob = :cod_prob';

  FQuery.ParamByName('cod_prob').AsInteger := aImagemProblema.CodigoProblema;
  FQuery.ParamByName('imagem').AsString := aImagemProblema.Imagem;

  FQuery.ExecSQL;
  FConn.GetConn.Commit;
end;

procedure TDAOImagemProblema.InsertImagem(aImagemProblema: TImagemProblema);
begin
  FQuery := FConn.CriarQuery;

  FQuery.SQL.Text :=
    'INSERT INTO probimg (seq_img, cod_prob, imagem)' +
    'VALUES (:seq_img, :cod_prob, :imagem)';
  FQuery.ParamByName('seq_img').AsInteger := aImagemProblema.Sequencia;
  FQuery.ParamByName('cod_prob').AsInteger := aImagemProblema.CodigoProblema;
  FQuery.ParamByName('imagem').AsString := aImagemProblema.Imagem;

  FQuery.ExecSQL;
  FConn.GetConn.Commit;
end;

end.
