unit uDAOConsultaPadrao;

interface

uses
  FireDAC.Comp.Client, uConexao, Data.DB, uProblema, Vcl.Dialogs;

type
  TDAOConsPadrao = class
  private
    FConn: TConexao;
    FQuery: TFDQuery;
    FDataSource: TDataSource;
  public
    procedure UpdateConsultaPadrao(aCodUsuario: Integer; aIndice: Integer; aDescricao: String);
    function BuscaConsultaPadrao(aCodUsuario: Integer; aDescricao: String): TDataSource;

    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TDAOProblema }


function TDAOConsPadrao.BuscaConsultaPadrao(aCodUsuario: Integer; aDescricao: String): TDataSource;
begin
  FQuery := FConn.CriarQuery;
  FDataSource := FConn.CriarDataSource;

  FQuery.SQL.Text := 'SELECT * FROM conspadrao c WHERE c.cod_usu = :cod_usu AND c.descricao = :descricao';
  FQuery.ParamByName('cod_usu').AsInteger := aCodUsuario;
  FQuery.ParamByName('descricao').AsString := aDescricao;
  FQuery.Open;

  FDataSource.DataSet := FQuery;

  Result := FDataSource;
end;

constructor TDAOConsPadrao.Create;
begin
  FConn := TConexao.Create;
end;

destructor TDAOConsPadrao.Destroy;
begin
  FConn.Free;

  inherited;
end;

procedure TDAOConsPadrao.UpdateConsultaPadrao(aCodUsuario: Integer; aIndice: Integer; aDescricao: String);
begin
  FQuery := FConn.CriarQuery;
  FDataSource := FConn.CriarDataSource;

  FQuery.SQL.Text := 'UPDATE conspadrao c SET c.indice = :indice WHERE c.descricao = :descricao and c.cod_usu = :cod_usu';
  FQuery.ParamByName('descricao').AsString := aDescricao;
  FQuery.ParamByName('indice').AsInteger := aIndice;
  FQuery.ParamByName('cod_usu').AsInteger := aCodUsuario;
  FQuery.ExecSQL;

  FDataSource.DataSet := FQuery;
end;

end.
