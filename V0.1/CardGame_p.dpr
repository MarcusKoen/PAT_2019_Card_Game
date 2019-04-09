program CardGame_p;

uses
  Vcl.Forms,
  CGClient_u in 'CGClient_u.pas' {Form2};
{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
