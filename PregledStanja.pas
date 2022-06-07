unit PregledStanja;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Unit1, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Vcl.Bind.Grid, System.Rtti, System.Bindings.Outputs,
  Vcl.Bind.Editors, Data.Bind.Components, Data.Bind.Grid, Data.Bind.DBScope,
  Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    StringGrid1: TStringGrid;
    BindSourceDB1: TBindSourceDB;
    BindSourceDB2: TBindSourceDB;
    BindingsList1: TBindingsList;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    Button4: TButton;
    BindSourceDB3: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses Unit3, Unit8;

procedure TForm2.Button1Click(Sender: TObject);
begin
 Form3.Show;
 Form2.Hide;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
application.Terminate;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
       VAR index:=Edit1.Text;
           DataModule1.queryInsert.ExecSQL('DELETE FROM ListaProizvodaZahtev WHERE IDTabele='+index);

DataModule1.FDQuery3.Refresh;

end;

procedure TForm2.Button4Click(Sender: TObject);
begin
Form8.Show;
self.hide;
end;

end.
