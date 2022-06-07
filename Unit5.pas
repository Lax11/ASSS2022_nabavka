unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Unit1;

type
  TForm5 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button3: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation
              uses Start;
{$R *.dfm}


procedure TForm5.Button1Click(Sender: TObject);
begin
application.Terminate;
end;

procedure TForm5.Button2Click(Sender: TObject);
begin
Form7.Show;
Self.Hide;
end;

procedure TForm5.Button3Click(Sender: TObject);
begin
     var username:= Edit1.Text;
     var password:= Edit2.Text;
     var email:= Edit3.Text;
     DataModule1.queryInsert.ExecSQL('INSERT INTO Korisnici(KorisnickoIme, Sifra, Email ) VALUES ( "'+username+'","'+password+'","'+email+'" )');
    ShowMessage('KREIRAN NALOG');
 DataModule1.FDQuery1.Refresh;

       end;
end.
