program CardGame_p;

uses
  Vcl.Forms,
  CGLogIn_u in 'CGLogIn_u.pas' {Login},
  CGServer_u in 'CGServer_u.pas' {frmServer},
  CGClient_u in 'CGClient_u.pas' {Client};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TLogin, Login);
  Application.CreateForm(TfrmServer, frmServer);
  Application.CreateForm(TClient, Client);
  Application.Run;
end.
