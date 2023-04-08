unit uModulo;

interface

type
  TModulo = Class
  private
    FNome: String;
    FData: TDate;
    FHora: TTime;
  public
    property Nome: String read FNome write FNome;
    property Data: TDate read FData write FData;
    property Hora: TTime read FHora write FHora;
  End;

implementation

end.
