unit uUsuario;

interface

uses
  System.Classes, Vcl.Dialogs;

type
  TUsuario = class
  private
    FCodigo: Integer;
    FNome: String;
    FSenha: String;

  public
    property Codigo: Integer read FCodigo write FCodigo;
    property Nome: String read FNome write FNome;
    property Senha: String read FSenha write FSenha;
  end;

implementation

{ TProblema }


end.
