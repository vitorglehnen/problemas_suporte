unit frmImagensProblema;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  System.ImageList,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.Clipbrd,
  Vcl.Buttons,
  Vcl.StdCtrls,
  Vcl.ImgList,
  pngimage,
  jpeg,
  ShellApi,
  System.IniFiles,
  uImagemProblema,
  uControllerProblema, uUsuario;

type
  TformImagensProblema = class(TForm)
    pnlPrincipal: TPanel;
    imgProblema: TImage;
    btnProxImagem: TSpeedButton;
    btnAntImagem: TSpeedButton;
    pnlTopImagem: TPanel;
    btnRemoverImagem: TSpeedButton;
    btnAddImagem: TSpeedButton;
    btnSalvarImagem: TSpeedButton;
    btnCancelarImagem: TSpeedButton;
    pnlContagem: TPanel;
    lblNmroImagem: TLabel;
    btnSelecionarImagem: TSpeedButton;
    procedure FormDestroy(Sender: TObject);
    procedure btnAntImagemClick(Sender: TObject);
    procedure InverteCrudImagem;
    procedure btnProxImagemClick(Sender: TObject);
    procedure btnAddImagemClick(Sender: TObject);
    procedure btnRemoverImagemClick(Sender: TObject);
    procedure imgProblemaDblClick(Sender: TObject);
    procedure btnSelecionarImagemClick(Sender: TObject);
    procedure btnCancelarImagemClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSalvarImagemClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    FCodProblema: Integer;
    FPosicaoListaImagem: Integer;
    FListaImagens: TStringList;
    FCaminhoImagem: String;
    FNomeImagem: String;
    FControllerProblema: TControllerProblema;
    FUsuario: TUsuario;

    procedure ConfigParamsImagem;
    procedure InserirImagem;
    procedure CarregaPersonalizacaoUsuario;
  public
    { Public declarations }

    procedure AtualizaPosicaoImagens;
    constructor Create(AOwner: TComponent; aCodProblema: String;
      aUsuario: TUsuario);
  end;

const
  NOME_ARQ_INI = 'Connect.ini';

var
  formImagensProblema: TformImagensProblema;

implementation

{$R *.dfm}

uses frmMain;

constructor TformImagensProblema.Create(AOwner: TComponent;
  aCodProblema: String; aUsuario: TUsuario);
begin
  { Método construtor da classe }

  inherited Create(AOwner);

  FUsuario := aUsuario;
  FCodProblema := StrToInt(aCodProblema);
  FPosicaoListaImagem := 0;
  FControllerProblema := TControllerProblema.Create;
  ConfigParamsImagem;

  try
    FListaImagens := FControllerProblema.BuscaImagens(FCodProblema);
  finally
    FControllerProblema.Free;
  end;
end;

procedure TformImagensProblema.FormDestroy(Sender: TObject);
begin
  { Método destrutor da classe }

  FListaImagens.Free;
end;

procedure TformImagensProblema.AtualizaPosicaoImagens;
begin
  pnlPrincipal.Caption := '';

  { Caso a lista de imagens for > 0, atualiza a informação na tela a posição
    da imagem, 1/4; 2/4.... }

  if FListaImagens.Count > 0 then
  begin
    lblNmroImagem.Caption := IntToStr(FPosicaoListaImagem + 1) + '/' +
      IntToStr(FListaImagens.Count);

    try
      imgProblema.Picture.LoadFromFile(FCaminhoImagem + FListaImagens
        [FPosicaoListaImagem]);
    except
      imgProblema.Picture := nil;

      pnlPrincipal.Caption := 'Imagem não encontrada! ' + FCaminhoImagem +
        FListaImagens[FPosicaoListaImagem];
    end;

    btnRemoverImagem.Enabled := True;
    btnRemoverImagem.Enabled := False;

    if not(btnAddImagem.Enabled) then
      btnRemoverImagem.Enabled := False
    else
      btnRemoverImagem.Enabled := True
  end
  else
  begin
    lblNmroImagem.Caption := '0' + '/' + '0';
    imgProblema.Picture := nil;
    btnRemoverImagem.Enabled := False;
  end;

  { Caso a posição da imagem = 0, desabilita o botão de voltar, caso
    contrário, habilita }
  if FPosicaoListaImagem = 0 then
    btnAntImagem.Enabled := False
  else
    btnAntImagem.Enabled := True;

  { Verifica se é a última mensagem da lista, pois caso for, desabilita o
    botão de próxima imagem }
  if ((FPosicaoListaImagem + 1) = FListaImagens.Count) or
    (FListaImagens.Count = 0) then
    btnProxImagem.Enabled := False
  else
    btnProxImagem.Enabled := True;
end;

procedure TformImagensProblema.btnSelecionarImagemClick(Sender: TObject);
begin
  { Lógica que implementa salvar as imagens selecionando pelo diretório }

  var
  aSaveDialog := TSaveDialog.Create(nil);
  var
  aBitMap := TBitMap.Create;
  var
    aPng: TPngImage;
  var
    aJpeg: TJPEGImage;
  aSaveDialog.Filter := 'Arquivos PNG (*.png)|*.png|' +
    'Arquivos JPEG (*.jpg, *.jpeg)|*.jpg; *.jpg';

  try
    if aSaveDialog.Execute then
    begin
      if aSaveDialog.FilterIndex = 1 then
      begin
        aPng := TPngImage.Create;
        try
          aPng.LoadFromFile(aSaveDialog.FileName);
          aBitMap.Assign(aPng);
        finally
          aPng.Free;
        end;
      end
      else if aSaveDialog.FilterIndex = 2 then
      begin
        aJpeg := TJPEGImage.Create;
        try
          aJpeg.LoadFromFile(aSaveDialog.FileName);
          aBitMap.Assign(aJpeg);
        finally
          aJpeg.Free;
        end;
      end;
      imgProblema.Picture.Assign(aBitMap);
    end;
  finally
    aSaveDialog.Free;
    aBitMap.Free;
  end;
end;

procedure TformImagensProblema.CarregaPersonalizacaoUsuario;
begin
  pnlTopImagem.Color := StringToColor(FUsuario.GetCor);
  pnlContagem.Color := StringToColor(FUsuario.GetCor);
end;

procedure TformImagensProblema.ConfigParamsImagem;
begin
  { Busca o caminho das imagens do sistema }

  var
    aArqINI: TIniFile := TIniFile.Create(ExtractFilePath(Application.ExeName) +
      NOME_ARQ_INI);

  try
    FCaminhoImagem := aArqINI.ReadString('Imagens', 'CaminhoDaPasta',
      'C:\Problemas Suporte\Imagens\');
  finally
    aArqINI.Free;
  end;
end;

procedure TformImagensProblema.FormShow(Sender: TObject);
begin
  CarregaPersonalizacaoUsuario;
  AtualizaPosicaoImagens;
end;

procedure TformImagensProblema.btnProxImagemClick(Sender: TObject);
begin
  btnAntImagem.Enabled := True;
  FPosicaoListaImagem := FPosicaoListaImagem + 1;
  AtualizaPosicaoImagens;
end;

procedure TformImagensProblema.btnRemoverImagemClick(Sender: TObject);
begin
  { Lógica de exclusão das imagens, excluindo tanto a informação do banco de
    dados como do diretório onde é salva }

  if Application.MessageBox('Deseja excluir esta imagem?', 'Excluir imagem',
    +MB_ICONQUESTION + MB_YESNO) = MrYes then
  begin
    var
      aImagem: TImagemProblema := TImagemProblema.Create;

    FControllerProblema := TControllerProblema.Create;
    try
      aImagem.Imagem := FListaImagens[FPosicaoListaImagem];
      aImagem.CodigoProblema := FCodProblema;

      try
        DeleteFile(FCaminhoImagem + FListaImagens[FPosicaoListaImagem]);
      except

      end;

      FControllerProblema.DeleteImagem(aImagem);
      FListaImagens.Delete(FPosicaoListaImagem);
      if FPosicaoListaImagem <> 0 then
        dec(FPosicaoListaImagem);
    finally
      aImagem.Free;
      FControllerProblema.Free;
    end;
  end;
  AtualizaPosicaoImagens;
end;

procedure TformImagensProblema.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  { Ao clicar CTRL + V, verifica se o conteúdo que está no clipboard é um
    BitMap, caso for, coloca a imagem na tela }

  if (ssCtrl in Shift) and (Key = Ord('V')) then
    if btnSalvarImagem.Enabled then
      if Clipboard.HasFormat(cf_bitmap) then
        imgProblema.Picture.Assign(Clipboard);

  if Key = VK_LEFT then
    if btnAntImagem.Enabled then
      btnAntImagemClick(self);

  if Key = VK_RIGHT then
    if btnProxImagem.Enabled then
      btnProxImagemClick(self);
end;

procedure TformImagensProblema.imgProblemaDblClick(Sender: TObject);
begin
  var
    aImagem: String := FCaminhoImagem + FListaImagens[FPosicaoListaImagem];

    // Após dois cliques na imagem, ela abre na tela pelo windows
  if imgProblema.Picture.Graphic <> nil then
    ShellExecute(Handle, 'open', PWideChar(aImagem), nil, nil, SW_SHOWNORMAL);
end;

procedure TformImagensProblema.InserirImagem;
begin
  { Função responsável por salvar as imagens tanto no banco de dados como na
    pasta onde deve ser salva }

  if imgProblema.Picture.Graphic = nil then
  begin
    MessageDlg('Insira uma imagem antes de salvar!', mtInformation, [mbOk], 0);
  end
  else
  begin
    var
      aImagemPNG: TPngImage := TPngImage.Create;

    var
      aImagemProblema: TImagemProblema := TImagemProblema.Create;

    FControllerProblema := TControllerProblema.Create;
    FNomeImagem := FControllerProblema.BuscaProximoCodigoImagem + ' ' +
      FormatDateTime('dd-mm-yyyy', Now) + '.png';

    try
      aImagemPNG.Assign(imgProblema.Picture.Bitmap);
      aImagemPNG.SaveToFile(FCaminhoImagem + FNomeImagem);
      FListaImagens.Add(FNomeImagem);
      aImagemProblema.Imagem := FNomeImagem;
      aImagemProblema.CodigoProblema := FCodProblema;
      FControllerProblema.InsertImagem(aImagemProblema);
    finally
      aImagemPNG.Free;
      aImagemProblema.Free;
      FControllerProblema.Free;
    end;

    InverteCrudImagem;
    FPosicaoListaImagem := FListaImagens.Count - 1;
    AtualizaPosicaoImagens;
    btnRemoverImagem.Enabled;
    pnlPrincipal.Caption := 'Clique em adicionar';
  end;

end;

procedure TformImagensProblema.btnAddImagemClick(Sender: TObject);
begin
  InverteCrudImagem;

  btnProxImagem.Enabled := False;
  btnAntImagem.Enabled := False;
  btnRemoverImagem.Enabled := False;
  imgProblema.Picture := nil;
  pnlPrincipal.Caption := 'Cole aqui sua imagem ou clique em procurar';
end;

procedure TformImagensProblema.btnAntImagemClick(Sender: TObject);
begin
  btnProxImagem.Enabled := True;
  FPosicaoListaImagem := FPosicaoListaImagem - 1;
  AtualizaPosicaoImagens;
end;

procedure TformImagensProblema.btnCancelarImagemClick(Sender: TObject);
begin
  InverteCrudImagem;
  AtualizaPosicaoImagens;
end;

procedure TformImagensProblema.btnSalvarImagemClick(Sender: TObject);
begin
  InserirImagem;
end;

procedure TformImagensProblema.InverteCrudImagem;
begin
  btnAddImagem.Enabled := not btnAddImagem.Enabled;
  btnSalvarImagem.Enabled := not btnSalvarImagem.Enabled;
  btnCancelarImagem.Enabled := not btnCancelarImagem.Enabled;
  btnSelecionarImagem.Enabled := not btnSelecionarImagem.Enabled;
end;

end.
