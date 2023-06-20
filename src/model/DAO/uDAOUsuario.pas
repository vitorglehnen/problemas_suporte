unit uDAOUsuario;

interface

uses
  FireDAC.Comp.Client,
  uConexao,
  uProblema,
  uUsuario,
  Data.DB,
  Vcl.Dialogs;

type
  TDAOUsuario = class
  private
    FConn: TConexao;
    FQuery: TFDQuery;
    FDataSource: TDataSource;
  public
    constructor Create;
    destructor Destroy; override;

    function RetornaUsuario(aUsuario: TUsuario): TDataSource;
  end;

implementation

{ TDAOProblema }

constructor TDAOUsuario.Create;
begin
  FConn := TConexao.Create;
end;

destructor TDAOUsuario.Destroy;
begin
  FConn.Free;
  inherited;
end;

end.
