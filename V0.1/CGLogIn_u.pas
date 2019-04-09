unit CGLogIn_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.jpeg, MMSystem{music play library},
  Vcl.ExtCtrls, Vcl.MPlayer{delete library usage};

type
  TLogin = class(TForm)
    edtUsername: TEdit;
    edtPassword: TEdit;
    btnLogIn: TButton;
    lblRegister: TLabel;
    lblForgotPass: TLabel;
    imgLogInBG: TImage;
    MediaPlayer1: TMediaPlayer;
    procedure FormActivate(Sender: TObject);
    procedure btnLogInClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Login: TLogin;

implementation

{$R *.dfm}


procedure TLogin.btnLogInClick(Sender: TObject);
  var
    sUserName, sPass : string; //longer var names or not?
begin
  sUserName := edtUsername.Text;
  sPass := edtPassword.Text;
end;

procedure TLogin.FormActivate(Sender: TObject);
begin
 { MediaPlayer1.FileName := 'C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\audio.mp3';
  MediaPlayer1.Open;
  MediaPlayer1.Play;}
  sndPlaySound('C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\BG.wav', SND_LOOP or SND_ASYNC);
  // add looping fuction lol!  done???
end;

end.