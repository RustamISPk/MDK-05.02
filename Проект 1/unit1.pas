unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button1KeyPress(Sender: TObject; var Key: char);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Label1Click(Sender: TObject);
begin

end;

procedure TForm1.Button1KeyPress(Sender: TObject; var Key: char);
begin

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  label2.Caption:='Это я!';
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Close()
end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

end.

