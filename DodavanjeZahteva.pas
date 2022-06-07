unit DodavanjeZahteva;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus;

type
  TForm6 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit6: TEdit;
    Label7: TLabel;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

uses Unit1;

procedure TForm6.Button1Click(Sender: TObject);
begin
  var ImePodnosioca:=Edit1.Text;
var DatumPodnosenja:=Edit2.Text;
var ImeDobavljaca:=Edit6.Text;
var ImeProizvoda:=Edit3.Text;
var Kolicina:=Edit4.Text;
var Cena:=Edit5.Text;
 DataModule1.queryInsert.ExecSQL('INSERT INTO ListaProizvodaZahtev( ImePodnosioca, DatumPodnosenja,ImeDobavljaca, ImeProizvoda, Kolicina, Cena ) VALUES ( "'+ImePodnosioca+'","'+DatumPodnosenja+'","'+ImeDobavljaca+'","'+ImeProizvoda+'","'+Kolicina+'","'+Cena+'" )');

 DataModule1.FDQuery3.Refresh;

end;



procedure TForm6.Button2Click(Sender: TObject);
begin
application.Terminate;
end;

end.
