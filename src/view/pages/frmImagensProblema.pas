unit frmImagensProblema;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Clipbrd, Vcl.Buttons,
  Vcl.StdCtrls;

type
  TformImagensProblema = class(TForm)
    btnAdicionarImagem: TPanel;
    imgProblema: TImage;
    btnProxImagem: TSpeedButton;
    btnAntImagem: TSpeedButton;
    pnlTopImagem: TPanel;
    btnRemoverImagem: TSpeedButton;
    btnAddImagem: TSpeedButton;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnAddImagemClick(Sender: TObject);
    procedure btnRemoverImagemClick(Sender: TObject);
  private
    { Private declarations }
    FCont: Integer;
  public
    { Public declarations }
  end;

var
  formImagensProblema: TformImagensProblema;

implementation

{$R *.dfm}

procedure TformImagensProblema.btnRemoverImagemClick(Sender: TObject);
begin
  imgProblema.Picture := nil;
end;

procedure TformImagensProblema.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = ^V then
    if Clipboard.HasFormat(cf_bitmap) then
      imgProblema.Picture.Assign(Clipboard);
end;

procedure TformImagensProblema.btnAddImagemClick(Sender: TObject);
begin
  var aListaImagens: TImageList := TImageList.Create(nil);
  var aImagem: TBitmap := imgProblema.Picture.Bitmap;

  try
    aListaImagens.Add(aImagem, nil);
    imgProblema.Picture := nil;
  finally
    aListaImagens.Free;
  end;
end;

end.
