unit CGLogIn_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls;

type
  TCGLogIn = class(TForm)
    edtUsername: TEdit;
    edtPassword: TEdit;
    btnLogIn: TButton;
    lblRegister: TLabel;
    lblForgotPass: TLabel;
    imgLogInBG: TImage;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CGLogIn: TCGLogIn;

implementation

{$R *.dfm}

end.
