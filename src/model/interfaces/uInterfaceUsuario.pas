unit uInterfaceUsuario;

interface

uses
  System.Classes;

type
  IUsuario = interface
    ['{B8D41E64-5FDD-4F5E-8D56-3E0673C08A7C}']
    function GetCodigo: Integer;
    function GetNome: String;
    function GetConsultaGeral: Integer;
    function GetCor: String;

    procedure SetCodigo(const Value: Integer);
    procedure SetNome(const Value: String);
    procedure SetConsultaGeral(const Value: Integer);
    procedure SetCor(const Value: String);

    property Codigo: Integer read GetCodigo write SetCodigo;
    property Nome: String read GetNome write SetNome;
    property ConsultaGeral: Integer read GetConsultaGeral write SetConsultaGeral;
    property Cor: String read GetCor write SetCor;

    procedure CriaUsuario;

  end;

  implementation

end.
