unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, PregledStanja, ZahtevNabavka, Unit9;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Label2: TLabel;
    Button2: TButton;
    Label3: TLabel;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
Form2.Show;
Form3.hide;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
Form4.Show;
Form3.Hide;
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
Form9.Show;
Self.Hide;
end;

end.
