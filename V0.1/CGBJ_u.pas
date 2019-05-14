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
    lblStatus: TLabel;
    btnHit: TButton;
    btnStay: TButton;
    Memo1: TMemo;
    Memo2: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnHitClick(Sender: TObject);
    procedure btnStayClick(Sender: TObject);
  private

    { Private declarations }
   // awaiting array implementation to delete duplicate card or just implement if statements
    bClubs : boolean;
    bSpades : boolean;
    bHearts : boolean;
    bDiamonds : boolean;
    bCard1, bCard2, bCard3, bCard4 : byte;
    UserScore, OpponentScore, AcexD, totScore : int32;
        bButton : Boolean;
              arrDeck : Array of Array of byte;
    procedure Card1;
    procedure Card2;
    procedure Card3;
    Procedure CreateCard;
    procedure Score;
    Procedure ClearScreen;
    procedure DeckCreation;

  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

Procedure TForm2.DeckCreation;
  var
    k, j, i: byte;
    Card, Suite : integer;
begin
  SetLength(arrDeck, 4); //suite array

  for k := 0 to 3 do
    begin
      SetLength(arrDeck[k], 13);
    end;


  for k := 0 to 3 do
    begin
      for j := 1 to 10 do
        begin
          arrDeck[k,j] := j;
            for i := 11 to 13 do
              begin
                arrDeck[k, i] := 10;
              end;
        end;
    end;

  for k := 0 to 3 do
    begin
      for j := 1 to 13 do
        begin
          Memo1.Lines.Add(inttostr(arrDeck[k,j]));
        end;
    end;

    Suite := Random(4);

    case Suite of
       0 : k := 0;
       1 : k := 1;
       2 : k := 2;
       3 : k := 3;
    end;

    case k of
      0 : begin
       Card := Random(13) + 1;


       if arrDeck[k, Card] > 0 then
       begin
        Memo2.Lines.Add(inttostr(arrDeck[k, Card]));
        arrDeck[k, Card] := 0;
       end;
      end;
      1 : begin
        Card := Random(13) + 1;
         if arrDeck[k, Card] > 0 then
         begin
        Memo2.Lines.Add(inttostr(arrDeck[k, Card]));
         arrDeck[k, Card] := 0;
         end;
      end;
      2 : begin
        Card := Random(13) + 1;
         if arrDeck[k, Card] > 0 then
         begin
        Memo2.Lines.Add(inttostr(arrDeck[k, Card]));
        arrDeck[k, Card] := 0;
         end;
      end;
      3 : begin
       Card := Random(13) + 1;
        if arrDeck[k, Card] > 0 then
        begin
       Memo2.Lines.Add(inttostr(arrDeck[k, Card]));
        arrDeck[k, Card] := 0;
        end;

      end;
    end;
end;

Procedure Tform2.ClearScreen;
begin
  SpeedButton1.Glyph.FreeImage;
  SpeedButton2.Glyph.FreeImage;
  SpeedButton3.Glyph.FreeImage;
  SpeedButton4.Glyph.FreeImage;
end;
Procedure TForm2.CreateCard;
  var
    Suite1, Suite2 : byte;
begin
      With TSpeedButton.Create(Form2) do
        begin
          Name := 'SpeedButtoNew';
          Parent := Form2;
          Top := 512;
          Width := 73;
          Height := 97;
          Left := 376;
          Visible := true;


      Suite1 := Random(4) + 1;
    case Suite1  of
      1 : bClubs := true;
      2 : bHearts := true;
      3 : bSpades := true;
      4 : bDiamonds := true;
    end;

      if bClubs = true then     //Clubs
    begin
     bCard4 := Random(13) + 1;
      Glyph.LoadFromFile(GetCurrentDir + '\card-BMPs\' + IntToStr(bCard4) + 'c.bmp');

      bClubs := false;
    end
  else
    if bHearts = true then     //hearts
      begin
       bCard4 := Random(13) + 1;
        Glyph.LoadFromFile(GetCurrentDir + '\card-BMPs\' +  IntToStr(bCard4) + 'h.bmp');

         bHearts := false;
      end
    else
      if bSpades = TRUE then   //spades
        begin
         bCard4 := Random(13) + 1;
          Glyph.LoadFromFile(GetCurrentDir + '\card-BMPs\' +  IntToStr(bCard4) + 's.bmp');

          bSpades := false;
        end
      else
        if bDiamonds = true then         // diamonds
          begin
           bCard4 := Random(13) + 1;
            Glyph.LoadFromFile(GetCurrentDir + '\card-BMPs\' +  IntToStr(bCard4) + 'd.bmp');

            bDiamonds := false;

end;
end;
end;
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

procedure TForm2.Card2;         //only new implemented
  var
    Suite1, Suite2 : byte;
   // bCard2 : byte;
begin
    Suite1 := Random(4);
    case Suite1  of
      0 : bClubs := true;
      1 : bHearts := true;
      2 : bSpades := true;
      3 : bDiamonds := true;
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

procedure TForm2.Card1;
  var
    Suite1, Suite2 : byte;
  //  bCard1 : byte;
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
     bCard1 := Random(13) + 1;
      SpeedButton1.Glyph.LoadFromFile(GetCurrentDir + '\card-BMPs\' + IntToStr(bCard1) + 'c.bmp');

      bClubs := false;
    end
  else
    if bHearts = true then     //hearts
      begin
       bCard1 := Random(13) + 1;
        SpeedButton1.Glyph.LoadFromFile(GetCurrentDir + '\card-BMPs\'  + IntToStr(bCard1) + 'h.bmp');

         bHearts := false;
      end
    else
      if bSpades = TRUE then   //spades
        begin
         bCard1 := Random(13) + 1;
          SpeedButton1.Glyph.LoadFromFile(GetCurrentDir + '\card-BMPs\' +  IntToStr(bCard1) + 's.bmp');

          bSpades := false;
        end
      else
        if bDiamonds = true then         // diamonds
          begin
           bCard1 := Random(13) + 1;
            SpeedButton1.Glyph.LoadFromFile(GetCurrentDir + '\card-BMPs\' +  IntToStr(bCard1) + 'd.bmp');

            bDiamonds := false;
          end;




  Label1.Caption := 'Suite1 ' + IntToStr(Suite1);

end;

procedure TForm2.Score;
  var
    k : byte;
begin
  UserScore := 0;
  AcexD := 0;
  totScore := 0;


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

         case bCard4 of
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

  totScore := UserScore + AcexD;

  if totScore = 21 then
    begin
      lblStatus.Caption := 'win';
      ClearScreen;
    end
  else
    if totScore > 21 then
      lblStatus.Caption := 'los'
    else                                                                  //fix score
      if totScore < 21 then
        lblStatus.Caption := 'not yet';

end;

procedure TForm2.btnHitClick(Sender: TObject);
begin
  btnStay.Enabled := false;
  if bButton = false then
    begin
      CreateCard;
      bButton := true;
    end;
  Score;
end;

procedure TForm2.btnStayClick(Sender: TObject);
   var
    Suite1, Suite2 : byte;
begin
  btnStay.Enabled := false;
  //implement second dealer card implementation
    Suite1 := Random(4) + 1;
    case Suite1  of
      1 : bClubs := true;
      2 : bHearts := true;
      3 : bSpades := true;
      4 : bDiamonds := true;
    end;

      if bClubs = true then     //Clubs
    begin
     bCard1 := Random(13) + 1;
      SpeedButton2.Glyph.LoadFromFile(GetCurrentDir + '\card-BMPs\' + IntToStr(bCard1) + 'c.bmp');

      bClubs := false;
    end
  else
    if bHearts = true then     //hearts
      begin
       bCard1 := Random(13) + 1;
        SpeedButton2.Glyph.LoadFromFile(GetCurrentDir + '\card-BMPs\'  + IntToStr(bCard1) + 'h.bmp');

         bHearts := false;
      end
    else
      if bSpades = TRUE then   //spades
        begin
         bCard1 := Random(13) + 1;
          SpeedButton2.Glyph.LoadFromFile(GetCurrentDir + '\card-BMPs\' +  IntToStr(bCard1) + 's.bmp');

          bSpades := false;
        end
      else
        if bDiamonds = true then         // diamonds
          begin
           bCard1 := Random(13) + 1;
            SpeedButton2.Glyph.LoadFromFile(GetCurrentDir + '\card-BMPs\' +  IntToStr(bCard1) + 'd.bmp');

            bDiamonds := false;
          end;

end;

procedure TForm2.Button1Click(Sender: TObject);
begin
  DeckCreation;
{  Button1.Enabled := false;
  btnHit.Visible := true;
  btnStay.Visible := true;
  Card1;
  Card2;
  Card3;
  Score;    }
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  btnHit.Visible := false;
  btnStay.Visible := false;
  Randomize;
  bClubs := false;
  bSpades := false;
  bHearts := false;
  bDiamonds := false;
  bButton := false;
end;

end.
