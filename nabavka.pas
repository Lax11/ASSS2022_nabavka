unit nabavka;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Unit1, Unit3, Unit5;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Label3: TLabel;
    Button3: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
 if (Edit1.Text='') AND (Edit2.Text='') then
    begin
    ShowMessage('Unesite korisničko ime i šifru.');
  end;

    var username :string;
    var password :string;
    var check := False;

  DataModule1.FDQuery1.First;
  while not DataModule1.FDQuery1.Eof do
   begin
     username := DataModule1.FDQuery1['KorisnickoIme'];
     password := DataModule1.FDQuery1['Sifra'];

     if Edit1.Text = Username then
     begin
         if Edit2.Text = Password then
       begin
         Form3.Show;
         Self.Hide;
         check := True;
         Break
       end;
     end;

       DataModule1.FDQuery1.Next;
   end;

  if not Check then
  ShowMessage('Proverite podatke');

end;


procedure TForm1.Button2Click(Sender: TObject);
begin
application.Terminate;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
Form5.Show;
Self.Hide;
end;

end.
