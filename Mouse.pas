unit Mouse;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, SMTray, ExtCtrls;

type
  TForm1 = class(TForm)
    SMTrayIcon1: TSMTrayIcon;
    PopupMenu1: TPopupMenu;
    RAAAIEIE1: TMenuItem;
    CHEGA1: TMenuItem;
    Timer1: TTimer;
    Timer2: TTimer;
    procedure RAAAIEIE1Click(Sender: TObject);
    procedure CHEGA1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  ptOld: TPoint;
  AlimentaOld: boolean;
implementation

{$R *.dfm}

procedure TForm1.RAAAIEIE1Click(Sender: TObject);
begin
  Timer1.Enabled := true;
end;

procedure TForm1.CHEGA1Click(Sender: TObject);
begin
  Timer1.Enabled := false;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var pt: TPoint;
    randonX,randonY : integer;
    randomm :integer;
    RandonAbaixo :boolean;
begin
  if AlimentaOld then
  begin
    GetCursorPos(ptOld);
    AlimentaOld := false;
  end
  else
  begin
    GetCursorPos(pt);
    AlimentaOld := true;
    if (pt.X <> ptOld.X) or (pt.Y <> ptOld.Y) then
    begin
      randomm := random(30);
      randonX := random(randomm);
      RandonAbaixo := random(1000) mod 2 = 0;
      if RandonAbaixo then
        randonX := -1*randonX;

      randomm := random(30);
      randonY := random(randomm);
      RandonAbaixo := random(1000) mod 2 = 0;
      if RandonAbaixo then
        randonY := -1*randonY;
      SetCursorPos(pt.X+randonX,pt.y+randonY);
    end;
  end;
end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
  Timer2.Interval :=  random(60000);
  Timer1.Enabled := not Timer1.Enabled;
end;

end.
