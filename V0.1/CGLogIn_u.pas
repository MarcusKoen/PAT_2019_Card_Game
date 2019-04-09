unit CGLogIn_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.jpeg, MMSystem,
  Vcl.ExtCtrls, Vcl.MPlayer;

type
  TCGLogIn = class(TForm)
    edtUsername: TEdit;
    edtPassword: TEdit;
    btnLogIn: TButton;
    lblRegister: TLabel;
    lblForgotPass: TLabel;
    imgLogInBG: TImage;
    MediaPlayer1: TMediaPlayer;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CGLogIn: TCGLogIn;

implementation

{$R *.dfm}


procedure TCGLogIn.FormActivate(Sender: TObject);
begin
 { MediaPlayer1.FileName := 'C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\audio.mp3';
  MediaPlayer1.Open;
  MediaPlayer1.Play;}
  sndPlaySound('C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\BG.wav', SND_NODEFAULT or SND_ASYNC);
end;

end.
