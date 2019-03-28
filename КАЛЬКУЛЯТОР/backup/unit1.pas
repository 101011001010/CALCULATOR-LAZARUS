unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Menus;

type

  { TForm1 }

  TForm1 = class(TForm)
    But1: TButton;
    But10: TButton;
    But11: TButton;
    But12: TButton;
    But13: TButton;
    But14: TButton;
    But15: TButton;
    But16: TButton;
    But17: TButton;
    But18: TButton;
    But19: TButton;
    But2: TButton;
    But20: TButton;
    But21: TButton;
    But22: TButton;
    But3: TButton;
    But4: TButton;
    But5: TButton;
    But6: TButton;
    But7: TButton;
    But8: TButton;
    But9: TButton;
    Button1: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Button19: TButton;
    Button2: TButton;
    Button20: TButton;
    Button22: TButton;
    Button23: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Edit1: TEdit;
    MainMenu2: TMainMenu;
    procedure But16Click(Sender: TObject);
    procedure But17Click(Sender: TObject);
    procedure But18Click(Sender: TObject);
    procedure But19Click(Sender: TObject);
    procedure But20Click(Sender: TObject);
    procedure But21Click(Sender: TObject);
    procedure But22Click(Sender: TObject);
    procedure ClickBut(Sender: TObject);
    procedure ClickZnak(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  a, b, c : Real;
  znak : String;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.ClickZnak(Sender: TObject);
begin
  a := StrToFloat(Edit1.Text);
  Edit1.Clear;

  znak :=(Sender as TButton).Caption;

end;

procedure TForm1.ClickBut(Sender: TObject);
begin

  Edit1.Text:=Edit1.Text + ( Sender as TButton).Caption;

end;

procedure TForm1.But22Click(Sender: TObject);
var
 str : String;
begin
  str := Edit1.Text;
  if str <> '' then
   Delete(str, Length(str),1);
  Edit1.Text:= str;
end;


procedure TForm1.But21Click(Sender: TObject);
begin
  Edit1.Clear;
end;

procedure TForm1.But16Click(Sender: TObject);
begin
  b := StrToFloat(Edit1.Text);
  Edit1.Clear;
  case znak of
  '+' : c := a+b;
  '-' : c := a-b;
  '*' : c := a*b;
  '/' : c := a/b;
  end;

  Edit1.Text:= FloatToStr(c);

end;

procedure TForm1.But17Click(Sender: TObject);
begin
 a := StrToFloat(Edit1.Text);
 a := 1/(a);
 Edit1.Text:=FloatToStr(a);
 a := 0;
end;

procedure TForm1.But18Click(Sender: TObject);
begin
 a := StrToFloat(Edit1.Text);
 a := sqr(a);
 Edit1.Text:=FloatToStr(a);
 a := 0;
end;

procedure TForm1.But19Click(Sender: TObject);
begin
 a := StrToFloat(Edit1.Text);
 a := sqrt(a);
 Edit1.Text:=FloatToStr(a);
 a := 0;

end;

procedure TForm1.But20Click(Sender: TObject);
begin
  Edit1.Clear;
  a:=0;
  b:=0;
  c:=0;

end;



end.


