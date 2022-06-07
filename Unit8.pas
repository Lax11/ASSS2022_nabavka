unit Unit8;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Unit1;

type
  TForm8 = class(TForm)
    Label2: TLabel;
    Label4: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public

  end;

var
  Form8: TForm8;

implementation
                    uses PregledStanja;
{$R *.dfm}

procedure TForm8.Button1Click(Sender: TObject);
begin
var ImeDobavljaca:=Edit1.Text;
var ImeProizvoda:=Edit2.Text;
var Kolicina:=Edit5.Text;
var Cena:=Edit4.Text;
 DataModule1.queryInsert.ExecSQL('INSERT INTO ListaProizvodaZahtev(ImeDobavljaca, ImeProizvoda, Kolicina, Cena ) VALUES ( "'+ImeDobavljaca+'","'+ImeProizvoda+'","'+Kolicina+'","'+Cena+'" )');

    DataModule1.FDQuery3.Refresh;

 end;


procedure TForm8.Button2Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TForm8.Button3Click(Sender: TObject);
begin
Form2.Show;
self.Hide;
end;

end.
