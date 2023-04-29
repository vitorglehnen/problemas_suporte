unit frmImagensProblema;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Clipbrd, Vcl.Buttons,
  Vcl.StdCtrls, System.ImageList, Vcl.ImgList;

type
  TformImagensProblema = class(TForm)
    btnAdicionarImagem: TPanel;
    imgProblema: TImage;
    btnProxImagem: TSpeedButton;
    btnAntImagem: TSpeedButton;
    pnlTopImagem: TPanel;
    ImageList1: TImageList;
    btnRemoverImagem: TSpeedButton;
    btnAddImagem: TSpeedButton;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btnRemoverImagemClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnAddImagemMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
    FCont: Integer;
    FListaImagens: TImageList;
  public
    { Public declarations }
  end;

var
  formImagensProblema: TformImagensProblema;

implementation

{$R *.dfm}

procedure TformImagensProblema.btnAddImagemMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  btnAdicionarImagem.Enabled := not btnAdicionarImagem.Enabled;
  //  var aImagem: TBitmap := imgProblema.Picture.Bitmap;
  //
  //  FCont := FCont + 1;
  //
  //  FListaImagens.Add(aImagem, nil);
  //  imgProblema.Picture := nil;
end;

procedure TformImagensProblema.btnRemoverImagemClick(Sender: TObject);
begin
  imgProblema.Picture := nil;
end;

procedure TformImagensProblema.FormCreate(Sender: TObject);
begin
  FCont:= 0;
  FListaImagens:= TImageList.Create(nil);
end;

procedure TformImagensProblema.FormDestroy(Sender: TObject);
begin
  FListaImagens.Free;
end;

procedure TformImagensProblema.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = ^V then
    if not btnAdicionarImagem.Enabled then
      if Clipboard.HasFormat(cf_bitmap) then
        imgProblema.Picture.Assign(Clipboard);
end;

procedure TformImagensProblema.FormShow(Sender: TObject);
begin
  FListaImagens.GetBitmap(0, imgProblema.Picture.Bitmap);
end;

end.
