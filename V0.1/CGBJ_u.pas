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
    lblScore: TLabel;
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
    bCard1, bCard2, bCard3 : byte;
    UserScore, OpponentScore, AcexD : int32;
//    procedure Card1;
    procedure Card2;
    procedure Card3;
    procedure Score;

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
  //  bCard3 : byte;
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
     bCard3 := Random(13) + 1;
      SpeedButton4.Glyph.LoadFromFile(GetCurrentDir + '\card-BMPs\' + IntToStr(bCard3) + 'c.bmp');

      bClubs := false;
    end
  else
    if bHearts = true then     //hearts
      begin
       bCard3 := Random(13) + 1;
        SpeedButton4.Glyph.LoadFromFile(GetCurrentDir + '\card-BMPs\' +  IntToStr(bCard3) + 'h.bmp');

         bHearts := false;
      end
    else
      if bSpades = TRUE then   //spades
        begin
         bCard3 := Random(13) + 1;
          SpeedButton4.Glyph.LoadFromFile(GetCurrentDir + '\card-BMPs\' +  IntToStr(bCard3) + 's.bmp');

          bSpades := false;
        end
      else
        if bDiamonds = true then         // diamonds
          begin
           bCard3 := Random(13) + 1;
            SpeedButton4.Glyph.LoadFromFile(GetCurrentDir + '\card-BMPs\' +  IntToStr(bCard3) + 'd.bmp');

            bDiamonds := false;
          end;

end;

procedure TForm2.Card2;
  var
    Suite1, Suite2 : byte;
   // bCard2 : byte;
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
     bCard2 := Random(13) + 1;
      SpeedButton3.Glyph.LoadFromFile(GetCurrentDir + '\card-BMPs\' +  IntToStr(bCard2) + 'c.bmp');

      bClubs := false;
    end
  else
    if bHearts = true then     //hearts
      begin
       bCard2 := Random(13) + 1;
        SpeedButton3.Glyph.LoadFromFile(GetCurrentDir + '\card-BMPs\' +  IntToStr(bCard2) + 'h.bmp');

         bHearts := false;
      end
    else
      if bSpades = TRUE then   //spades
        begin
         bCard2 := Random(13) + 1;
          SpeedButton3.Glyph.LoadFromFile(GetCurrentDir + '\card-BMPs\' +  IntToStr(bCard2) + 's.bmp');

          bSpades := false;
        end
      else
        if bDiamonds = true then         // diamonds
          begin
           bCard2 := Random(13) + 1;
            SpeedButton3.Glyph.LoadFromFile(GetCurrentDir + '\card-BMPs\' +  IntToStr(bCard2) + 'd.bmp');

            bDiamonds := false;
          end;


end;

//procedure TForm2.Card1;
//  var
//    Suite1, Suite2 : byte;
//  //  bCard1 : byte;
//begin
//  Suite1 := Random(4) + 1;
//    case Suite1  of
//      1 : bClubs := true;
//      2 : bHearts := true;
//      3 : bSpades := true;
//      4 : bDiamonds := true;
//    end;
//
//      if bClubs = true then     //Clubs
//    begin
//     bCard1 := Random(13) + 1;
//      SpeedButton1.Glyph.LoadFromFile(GetCurrentDir + '\card-BMPs\' + IntToStr(bCard1) + 'c.bmp');
//
//      bClubs := false;
//    end
//  else
//    if bHearts = true then     //hearts
//      begin
//       bCard1 := Random(13) + 1;
//        SpeedButton1.Glyph.LoadFromFile(GetCurrentDir + '\card-BMPs\'  + IntToStr(bCard1) + 'h.bmp');
//
//         bHearts := false;
//      end
//    else
//      if bSpades = TRUE then   //spades
//        begin
//         bCard1 := Random(13) + 1;
//          SpeedButton1.Glyph.LoadFromFile(GetCurrentDir + '\card-BMPs\' +  IntToStr(bCard1) + 's.bmp');
//
//          bSpades := false;
//        end
//      else
//        if bDiamonds = true then         // diamonds
//          begin
//           bCard1 := Random(13) + 1;
//            SpeedButton1.Glyph.LoadFromFile(GetCurrentDir + '\card-BMPs\' +  IntToStr(bCard1) + 'd.bmp');
//
//            bDiamonds := false;
//          end;
//
//
//
//
//  Label1.Caption := 'Suite1 ' + IntToStr(Suite1);
//
//end;

procedure TForm2.Score;
  var
    k : byte;
begin
  UserScore := 0;
  AcexD := 0;



         case bCard3 of
        1  : begin
              UserScore := UserScore + 1;
           //   AcexD := AcexD + (UserScore - 1) + 11
             end;         //implement bool check for 1 or 11          this loop for user cards, split for comp cards
        2  : UserScore := UserScore + 2;
        3  : UserScore := UserScore + 3;
        4  : UserScore := UserScore + 4;
        5  : UserScore := UserScore + 5;
        6  : UserScore := UserScore + 6;
        7  : UserScore := UserScore + 7;
        8  : UserScore := UserScore + 8;
        9  : UserScore := UserScore + 9;
        10 : UserScore := UserScore + 10;
        11 : UserScore := UserScore + 10;
        12 : UserScore := UserScore + 10;
        13 : UserScore := UserScore + 10;
      end;



      case bCard2 of
        1  : begin
              UserScore := UserScore + 1;
              AcexD := AcexD + (UserScore - 1) + 11
             end;
        2  : UserScore := UserScore + 2;
        3  : UserScore := UserScore + 3;
        4  : UserScore := UserScore + 4;
        5  : UserScore := UserScore + 5;
        6  : UserScore := UserScore + 6;
        7  : UserScore := UserScore + 7;
        8  : UserScore := UserScore + 8;
        9  : UserScore := UserScore + 9;
        10 : UserScore := UserScore + 10;
        11 : UserScore := UserScore + 10;
        12 : UserScore := UserScore + 10;
        13 : UserScore := UserScore + 10;
      end;

      if bCard3 = 1 then
        AcexD := AcexD + (UserScore - 1) + 11;

  lblScore.Caption := inttostr(UserScore) + ' OR ' + InttoStr(AcexD);
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
  //Card1;
  Card2;
  Card3;
  Score;
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
