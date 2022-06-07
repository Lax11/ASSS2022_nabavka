unit ZahtevNabavka;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Unit1, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Vcl.Bind.Grid, System.Rtti, System.Bindings.Outputs,
  Vcl.Bind.Editors, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,
  Vcl.StdCtrls, Unit5, DodavanjeZahteva;

type
  TForm4 = class(TForm)
    StringGrid1: TStringGrid;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    INDEX: TLabel;
    Edit1: TEdit;
    Button4: TButton;
    BindSourceDB2: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation
                 uses Unit3;
{$R *.dfm}



procedure TForm4.Button1Click(Sender: TObject);
begin
Form3.Show;
 Form4.Hide;
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
 VAR index:=Edit1.Text;
           DataModule1.queryInsert.ExecSQL('DELETE FROM ListaProizvodaZahtev WHERE IDTabele='+index);
           DataModule1.queryInsert.ExecSQL('DELETE FROM Porudzbenica WHERE IDTabele='+index);
    DataModule1.FDQuery3.Refresh;


end;

procedure TForm4.Button3Click(Sender: TObject);
begin
Form6.Show;
Self.Hide;
end;

procedure TForm4.Button4Click(Sender: TObject);
begin
application.Terminate;
end;

end.
