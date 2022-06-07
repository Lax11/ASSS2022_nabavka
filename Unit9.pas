unit Unit9;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Unit1,
  Vcl.Bind.Grid, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.Grid,
  Data.Bind.DBScope;

type
  TForm9 = class(TForm)
    StringGrid1: TStringGrid;
    BindSourceDB1: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindingsList1: TBindingsList;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation
          uses Unit3, Unit10;
{$R *.dfm}

procedure TForm9.Button1Click(Sender: TObject);
begin
Form3.Show;
Self.Hide;
end;

procedure TForm9.Button2Click(Sender: TObject);
begin
       Form10.Show;
      Self.Hide;
end;

procedure TForm9.Button3Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TForm9.Button4Click(Sender: TObject);
begin
  VAR index:=Edit1.Text;
           DataModule1.queryInsert.ExecSQL('DELETE FROM Porudzbenica WHERE IDTabele='+index);
                  DataModule1.queryInsert.ExecSQL('DELETE FROM ListaProizvodaZahtev WHERE IDTabele='+index);
               DataModule1.queryPorudzbenica.Refresh;
           end;

end.

