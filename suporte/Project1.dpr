program Project1;

uses
  Vcl.Forms,
  suporte in 'suporte.pas' {formPrincipal},
  dm in 'dm.pas' {dmQuerys: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TformPrincipal, formPrincipal);
  Application.CreateForm(TdmQuerys, dmQuerys);
  Application.Run;
end.
