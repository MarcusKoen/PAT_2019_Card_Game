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
    Button1: TButton;
    Label1: TLabel;
    SpeedButton4: TSpeedButton;
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
    procedure Card1;
    procedure Card2;
    procedure Card3;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}
procedure TForm2.Card3;
  var
    Suite1, Suite2 : byte;
    Card : byte;
begin
      Suite1 := Random(4) + 1;
    case Suite1  of
      1 : bClubs := true;
      2 : bHearts := true;
      3 : bSpades := true;
      4 : bDiamonds := true;
    end;

      if bClubs = true then     //Clubs
    begin
     Card := Random(13) + 1;
      SpeedButton4.Glyph.LoadFromFile('C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\card-BMPs\' + IntToStr(Card) + 'c.bmp');

      bClubs := false;
    end
  else
    if bHearts = true then     //hearts
      begin
       Card := Random(13) + 1;
        SpeedButton4.Glyph.LoadFromFile('C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\card-BMPs\' + IntToStr(Card) + 'h.bmp');

         bHearts := false;
      end
    else
      if bSpades = TRUE then   //spades
        begin
         Card := Random(13) + 1;
          SpeedButton4.Glyph.LoadFromFile('C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\card-BMPs\' + IntToStr(Card) + 's.bmp');

          bSpades := false;
        end
      else
        if bDiamonds = true then         // diamonds
          begin
           Card := Random(13) + 1;
            SpeedButton4.Glyph.LoadFromFile('C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\card-BMPs\' + IntToStr(Card) + 'd.bmp');

            bDiamonds := false;
          end;

end;

procedure TForm2.Card2;
  var
    Suite1, Suite2 : byte;
    Card : byte;
begin
    Suite1 := Random(4) + 1;
    case Suite1  of
      1 : bClubs := true;
      2 : bHearts := true;
      3 : bSpades := true;
      4 : bDiamonds := true;
    end;

      if bClubs = true then     //Clubs
    begin
     Card := Random(13) + 1;
      SpeedButton3.Glyph.LoadFromFile('C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\card-BMPs\' + IntToStr(Card) + 'c.bmp');

      bClubs := false;
    end
  else
    if bHearts = true then     //hearts
      begin
       Card := Random(13) + 1;
        SpeedButton3.Glyph.LoadFromFile('C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\card-BMPs\' + IntToStr(Card) + 'h.bmp');

         bHearts := false;
      end
    else
      if bSpades = TRUE then   //spades
        begin
         Card := Random(13) + 1;
          SpeedButton3.Glyph.LoadFromFile('C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\card-BMPs\' + IntToStr(Card) + 's.bmp');

          bSpades := false;
        end
      else
        if bDiamonds = true then         // diamonds
          begin
           Card := Random(13) + 1;
            SpeedButton3.Glyph.LoadFromFile('C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\card-BMPs\' + IntToStr(Card) + 'd.bmp');

            bDiamonds := false;
          end;


end;

procedure TForm2.Card1;
  var
    Suite1, Suite2 : byte;
    Card : byte;
begin
  Suite1 := Random(4) + 1;
    case Suite1  of
      1 : bClubs := true;
      2 : bHearts := true;
      3 : bSpades := true;
      4 : bDiamonds := true;
    end;

      if bClubs = true then     //Clubs
    begin
     Card := Random(13) + 1;
      SpeedButton1.Glyph.LoadFromFile('C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\card-BMPs\' + IntToStr(Card) + 'c.bmp');

      bClubs := false;
    end
  else
    if bHearts = true then     //hearts
      begin
       Card := Random(13) + 1;
        SpeedButton1.Glyph.LoadFromFile('C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\card-BMPs\' + IntToStr(Card) + 'h.bmp');

         bHearts := false;
      end
    else
      if bSpades = TRUE then   //spades
        begin
         Card := Random(13) + 1;
          SpeedButton1.Glyph.LoadFromFile('C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\card-BMPs\' + IntToStr(Card) + 's.bmp');

          bSpades := false;
        end
      else
        if bDiamonds = true then         // diamonds
          begin
           Card := Random(13) + 1;
            SpeedButton1.Glyph.LoadFromFile('C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\card-BMPs\' + IntToStr(Card) + 'd.bmp');

            bDiamonds := false;
          end;




  Label1.Caption := 'Suite1 ' + IntToStr(Suite1);

end;

procedure TForm2.Button1Click(Sender: TObject);
begin
  Card1;
  Card2;
  Card3;
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
