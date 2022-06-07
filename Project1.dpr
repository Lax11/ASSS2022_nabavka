program Project1;

uses
  Vcl.Forms,
  nabavka in 'nabavka.pas' {Form1},
  Unit1 in 'Unit1.pas' {DataModule1: TDataModule},
  Unit3 in 'Unit3.pas' {Form3},
  PregledStanja in 'PregledStanja.pas' {Form2},
  ZahtevNabavka in 'ZahtevNabavka.pas' {Form4},
  Unit5 in 'Unit5.pas' {Form5},
  DodavanjeZahteva in 'DodavanjeZahteva.pas' {Form6},
  Start in 'Start.pas' {Form7},
  Unit8 in 'Unit8.pas' {Form8},
  Unit9 in 'Unit9.pas' {Form9},
  Unit10 in 'Unit10.pas' {Form10};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm8, Form8);
  Application.CreateForm(TForm9, Form9);
  Application.CreateForm(TForm10, Form10);
  Application.Run;
end.
