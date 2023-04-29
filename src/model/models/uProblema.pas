unit uProblema;

interface

uses
  System.Classes;

type
  TProblema = class
  private
    FTitulo: String;
    FChamado: String;
    FDetalhes: String;
    FSolucao: TStream;
    FData: TDate;
    FHora: TTime;
    FModulo: String;
    FCodigo: Integer;
  public
    property Codigo: Integer read FCodigo write FCodigo;
    property Titulo: String read FTitulo write FTitulo;
    property Modulo: String read FModulo write FModulo;
    property Chamado: String read FChamado write FChamado;
    property Detalhes: String read FDetalhes write FDetalhes;
    property Solucao: TStream read FSolucao write FSolucao;
    property Data: TDate read FData write FData;
    property Hora: TTime read FHora write FHora;
  end;

implementation

end.
