unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, TeeProcs, TeEngine, Chart;

type
  TForm2 = class(TForm)
    Chart1: TChart;
    Label1: TLabel;
    Button1: TButton;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
   const m=100;
var
  Form2: TForm2;
 k, n, i: integer;


 implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
  n:= StrToInt(Edit1.Text);

Series1.Clear;
 For i:= -m to m do
begin
  x:= Pi/m*i;
  y:=0;
 For k:=1 to n do
 begin
  If k mod 2=1 then l:=1
    else l:=-1;
 y:= y+l*sin(k*x)/k;
  end;
 y:=y*2:;
  Series1.AddXY(x,y);
  end;

end;

end.
