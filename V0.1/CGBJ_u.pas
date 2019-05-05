unit CGBJ_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Button1: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    arrClubs1 : array[1..13] of string;
    arrHearts2 : array[1..13] of string;
    arrSpades3 : array[1..13] of string;
    arrDiamonds4 : array[1..13] of string;
    bClubs : boolean;
    bSpades : boolean;
    bHearts : boolean;
    bDiamonds : boolean;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
  var
    Suite : byte;
    Card : byte;
    k : byte;
begin
  Suite := Random(4) + 1;
    case Suite  of
      1 : bClubs := true;
      2 : bHearts := true;
      3 : bSpades := true;
      4 : bDiamonds := true;
    end;
  Card := Random(13) + 1;

  if bClubs = true then     //Clubs
    begin
      SpeedButton1.Glyph.LoadFromFile('C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\card-BMPs\' + IntToStr(Card) + 'c.bmp');
       SpeedButton3.Glyph.LoadFromFile('C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\card-BMPs\' + IntToStr(Card) + 'c.bmp');
      bClubs := false;
    end
  else
    if bHearts = true then     //hearts
      begin
        SpeedButton1.Glyph.LoadFromFile('C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\card-BMPs\' + IntToStr(Card) + 'h.bmp');
          SpeedButton3.Glyph.LoadFromFile('C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\card-BMPs\' + IntToStr(Card) + 'c.bmp');
         bHearts := false;
      end
    else
      if bSpades = TRUE then   //spades
        begin
          SpeedButton1.Glyph.LoadFromFile('C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\card-BMPs\' + IntToStr(Card) + 's.bmp');
           SpeedButton3.Glyph.LoadFromFile('C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\card-BMPs\' + IntToStr(Card) + 'c.bmp');
          bSpades := false;
        end
      else
        if bDiamonds = true then         // diamonds
          begin
            SpeedButton1.Glyph.LoadFromFile('C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\card-BMPs\' + IntToStr(Card) + 'd.bmp');
            SpeedButton3.Glyph.LoadFromFile('C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\card-BMPs\' + IntToStr(Card) + 'c.bmp');
            bDiamonds := false;
          end;




  Label1.Caption := IntToStr(Suite);
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  Randomize;
    bClubs := false;
    bSpades := false;
    bHearts := false;
    bDiamonds := false;
end;

end.
