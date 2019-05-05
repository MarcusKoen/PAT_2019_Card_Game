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
     // case Card of
       { 1 : SpeedButton1.Glyph.LoadFromFile('C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\card-BMPs\1c.bmp');
        2 : SpeedButton1.Glyph.LoadFromFile('C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\card-BMPs\2c.bmp');
        3 : SpeedButton1.Glyph.LoadFromFile('C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\card-BMPs\3c.bmp');
        4 : SpeedButton1.Glyph.LoadFromFile('C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\card-BMPs\4c.bmp');
        5 : SpeedButton1.Glyph.LoadFromFile('C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\card-BMPs\5c.bmp');
        6 : SpeedButton1.Glyph.LoadFromFile('C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\card-BMPs\6c.bmp');
        7 : SpeedButton1.Glyph.LoadFromFile('C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\card-BMPs\7c.bmp');
        8 : SpeedButton1.Glyph.LoadFromFile('C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\card-BMPs\8c.bmp');
        9 : SpeedButton1.Glyph.LoadFromFile('C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\card-BMPs\9c.bmp');
        10 : SpeedButton1.Glyph.LoadFromFile('C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\card-BMPs\10c.bmp');
        11 : SpeedButton1.Glyph.LoadFromFile('C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\card-BMPs\11c.bmp');
        12 : SpeedButton1.Glyph.LoadFromFile('C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\card-BMPs\12c.bmp');
        13 : SpeedButton1.Glyph.LoadFromFile('C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\card-BMPs\13c.bmp'); }
      //end;
      bClubs := false;
    end
  else
    if bHearts = true then     //hearts
      begin
        case Card of
          1 : SpeedButton1.Glyph.LoadFromFile('C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\card-BMPs\1h.bmp');
          2 : SpeedButton1.Glyph.LoadFromFile('C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\card-BMPs\2h.bmp');
          3 : SpeedButton1.Glyph.LoadFromFile('C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\card-BMPs\3h.bmp');
          4 : SpeedButton1.Glyph.LoadFromFile('C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\card-BMPs\4h.bmp');
          5 : SpeedButton1.Glyph.LoadFromFile('C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\card-BMPs\5h.bmp');
          6 : SpeedButton1.Glyph.LoadFromFile('C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\card-BMPs\6h.bmp');
          7 : SpeedButton1.Glyph.LoadFromFile('C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\card-BMPs\7h.bmp');
          8 : SpeedButton1.Glyph.LoadFromFile('C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\card-BMPs\8h.bmp');
          9 : SpeedButton1.Glyph.LoadFromFile('C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\card-BMPs\9h.bmp');
          10 : SpeedButton1.Glyph.LoadFromFile('C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\card-BMPs\10h.bmp');
          11 : SpeedButton1.Glyph.LoadFromFile('C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\card-BMPs\11h.bmp');
          12 : SpeedButton1.Glyph.LoadFromFile('C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\card-BMPs\12h.bmp');
          13 : SpeedButton1.Glyph.LoadFromFile('C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\card-BMPs\13h.bmp');
          bHearts := false;
        end;
      end
    else
      if bSpades = TRUE then   //spades
        begin
          case Card of
            1 : SpeedButton1.Glyph.LoadFromFile('C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\card-BMPs\1s.bmp');
            2 : SpeedButton1.Glyph.LoadFromFile('C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\card-BMPs\2s.bmp');
            3 : SpeedButton1.Glyph.LoadFromFile('C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\card-BMPs\3s.bmp');
            4 : SpeedButton1.Glyph.LoadFromFile('C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\card-BMPs\4s.bmp');
            5 : SpeedButton1.Glyph.LoadFromFile('C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\card-BMPs\5s.bmp');
            6 : SpeedButton1.Glyph.LoadFromFile('C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\card-BMPs\6s.bmp');
            7 : SpeedButton1.Glyph.LoadFromFile('C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\card-BMPs\7s.bmp');
            8 : SpeedButton1.Glyph.LoadFromFile('C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\card-BMPs\8s.bmp');
            9 : SpeedButton1.Glyph.LoadFromFile('C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\card-BMPs\9s.bmp');
            10 : SpeedButton1.Glyph.LoadFromFile('C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\card-BMPs\10s.bmp');
            11 : SpeedButton1.Glyph.LoadFromFile('C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\card-BMPs\11s.bmp');
            12 : SpeedButton1.Glyph.LoadFromFile('C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\card-BMPs\12s.bmp');
            13 : SpeedButton1.Glyph.LoadFromFile('C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\card-BMPs\13s.bmp');
            bSpades := false;
          end;
        end
      else
        if bDiamonds = true then         // diamonds
          begin
            case Card of
              1 : SpeedButton1.Glyph.LoadFromFile('C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\card-BMPs\1d.bmp');
              2 : SpeedButton1.Glyph.LoadFromFile('C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\card-BMPs\2d.bmp');
              3 : SpeedButton1.Glyph.LoadFromFile('C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\card-BMPs\3d.bmp');
              4 : SpeedButton1.Glyph.LoadFromFile('C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\card-BMPs\4d.bmp');
              5 : SpeedButton1.Glyph.LoadFromFile('C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\card-BMPs\5d.bmp');
              6 : SpeedButton1.Glyph.LoadFromFile('C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\card-BMPs\6d.bmp');
              7 : SpeedButton1.Glyph.LoadFromFile('C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\card-BMPs\7d.bmp');
              8 : SpeedButton1.Glyph.LoadFromFile('C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\card-BMPs\8d.bmp');
              9 : SpeedButton1.Glyph.LoadFromFile('C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\card-BMPs\9d.bmp');
              10 : SpeedButton1.Glyph.LoadFromFile('C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\card-BMPs\10d.bmp');
              11 : SpeedButton1.Glyph.LoadFromFile('C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\card-BMPs\11d.bmp');
              12 : SpeedButton1.Glyph.LoadFromFile('C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\card-BMPs\12d.bmp');
              13 : SpeedButton1.Glyph.LoadFromFile('C:\Users\marcu\OneDrive\Documents\GitHub\PAT_2019_Card_Game\V0.1\card-BMPs\13d.bmp');
              bDiamonds := false;
            end;
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
