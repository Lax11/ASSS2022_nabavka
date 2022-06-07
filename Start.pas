unit Start;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,nabavka, Unit5;

type
  TForm7 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Label2: TLabel;
    Button2: TButton;
    procedure Label1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

procedure TForm7.Button1Click(Sender: TObject);
begin
Form1.Show;
Self.Hide;
end;

procedure TForm7.Button2Click(Sender: TObject);
begin
     Form1.Show;
Self.Hide;
end;

procedure TForm7.Label1Click(Sender: TObject);
begin
  Form5.Show;
  Self.Hide;
end;

end.
