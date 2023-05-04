unit uImagemProblema;

interface

type
  TImagemProblema = class
  private
    FCodigoProblema: Integer;
    FSequencia: Integer;
    FImagem: String;
    FData: TDate;
    FHora: TTime;
  public
    property CodigoProblema: Integer read FCodigoProblema write FCodigoProblema;
    property Sequencia: Integer read FSequencia write FSequencia;
    property Imagem: String read FImagem write FImagem;
    property Data: TDate read FData write FData;
    property Hora: TTime read FHora write FHora;
  end;

implementation

end.
