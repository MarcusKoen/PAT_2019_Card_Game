unit CGLogIn_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.jpeg, MMSystem{music play library},
  Vcl.ExtCtrls, Vcl.MPlayer, System.Win.ScktComp{delete library usage}, CGServer_u;

type
  TLogin = class(TForm)
    edtUsername: TEdit;
    edtPassword: TEdit;
    btnLogIn: TButton;
    lblRegister: TLabel;
    lblForgotPass: TLabel;
    imgLogInBG: TImage;
    MediaPlayer1: TMediaPlayer;
    ClientSocket1: TClientSocket;
    procedure FormActivate(Sender: TObject);
    procedure btnLogInClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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

  With frmServer do
    begin
      while NOT (ADOTable1.Eof) do
        begin
          if (sUserName = ADOTable1['Username'])  AND (sPass = ADOTable1['Password']) then
            begin
              ShowMessage('Successfully connected');
              Exit;
            end
          else
            begin
              ADOTable1.Next;
              ShowMessage('Unsuccessfully connected');
            end;


        end;

    end;
end;

procedure TLogin.FormActivate(Sender: TObject);
begin
 { MediaPlayer1.FileName := 'C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\audio.mp3';
  MediaPlayer1.Open;
  MediaPlayer1.Play;}
  sndPlaySound('C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\BG.wav', SND_LOOP or SND_ASYNC);
  // add looping fuction lol!  done???
end;

procedure TLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ClientSocket1.Active := false;
end;

procedure TLogin.FormCreate(Sender: TObject);
begin
  ClientSocket1.Port := 23;
  //local TCP/IP address of the server
  ClientSocket1.Host := '192.168.167.12';    //implementation of server ip authent and ip entering, msg dioalog etc
  ClientSocket1.Active := true;
end;

end.
