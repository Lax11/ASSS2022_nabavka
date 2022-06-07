unit Unit10;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Unit9, Unit1;

type
  TForm10 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation

{$R *.dfm}

procedure TForm10.Button1Click(Sender: TObject);
begin
 var ImePodnosioca:=Edit1.Text;
 var ImeDobavljaca:=Edit2.Text;
 var ImeProizvoda:=Edit3.Text;
 var Kolicina:=Edit4.Text;
var Cena:=Edit5.Text;
var DatumPodnosenja:=Edit6.Text;
var Status:=Edit7.Text;
 DataModule1.queryInsert.ExecSQL('INSERT INTO Porudzbenica( ImePodnosioca, DatumPodnosenja,ImeDobavljaca, ImeProizvoda, Kolicina, Cena, Status ) VALUES ( "'+ImePodnosioca+'","'+DatumPodnosenja+'","'+ImeDobavljaca+'","'+ImeProizvoda+'","'+Kolicina+'","'+Cena+'","'+Status+'" )');
 DataModule1.queryPorudzbenica.Refresh;

end;

procedure TForm10.Button2Click(Sender: TObject);
begin
Form9.Show;
Self.Hide;
end;

procedure TForm10.Button3Click(Sender: TObject);
begin
     Application.Terminate;
      end;
end.
