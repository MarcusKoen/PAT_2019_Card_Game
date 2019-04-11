program CardGame_p;

uses
  Vcl.Forms,
  CGLogIn_u in 'CGLogIn_u.pas' {Login},
  CGServer_u in 'CGServer_u.pas' {frmServer};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TLogin, Login);
  Application.CreateForm(TfrmServer, frmServer);
  Application.Run;
end.
