unit FormViewProducts;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, System.Rtti,
  FMX.Grid.Style, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs, FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.FMXUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FMX.Controls.Presentation,
  FMX.ScrollBox, FMX.Grid, Data.Bind.EngExt, Fmx.Bind.DBEngExt, Fmx.Bind.Grid,
  System.Bindings.Outputs, Fmx.Bind.Editors, FMX.StdCtrls, Data.Bind.Components,
  Data.Bind.Grid, Data.Bind.DBScope, DataModul;

type
  TfrmViewProducts = class(TForm)
    btnZahtev: TButton;
    gridPorudzbenica: TGrid;
    gridZahteva: TGrid;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindSourceDB2: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB2: TLinkGridToDataSource;
    Label7: TLabel;
    btnPorudz: TButton;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnPorudzClick(Sender: TObject);
    procedure btnZahtevClick(Sender: TObject);
  private
    { Private declarations }
  public
  idStr :String;
    { Public declarations }
  end;

var
  frmViewProducts: TfrmViewProducts;

implementation

uses FormOrderView, FormPurchaseOrderView;

{$R *.fmx}

procedure TfrmViewProducts.btnPorudzClick(Sender: TObject);
begin
  frmViewProducts.hide;
  gridPorudzbenica.Visible := false;
  gridZahteva.Visible := false;
  btnZahtev.Visible := false;
  btnPorudz.Visible := false;
  frmPurchaseOrderView.Show;
end;

procedure TfrmViewProducts.btnZahtevClick(Sender: TObject);
begin
  frmViewProducts.hide;
  gridPorudzbenica.Visible := false;
  gridZahteva.Visible := false;
  btnZahtev.Visible := false;
  btnPorudz.Visible := false;
  frmRequestOrderView.Show;
end;

procedure TfrmViewProducts.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Application.Terminate;
end;

procedure TfrmViewProducts.FormShow(Sender: TObject);
begin

  with mainDataModul.queryProizvodiNaZahtevu do
  begin
    SQL.Text := 'SELECT Proizvod.ImeProizvoda, ListaProizvodaZahtev.Kolicina, Proizvod.CenaKupovine ' +
                'FROM ListaProizvodaZahtev ' +
                'INNER JOIN Proizvod ' +
                'ON ListaProizvodaZahtev.IDProizvoda = Proizvod.IDTabele ' +
                'INNER JOIN ZahtevZaNabavku ' +
                'ON ListaProizvodaZahtev.IDZahteva = ZahtevZaNabavku.IDTabele ' +
                'WHERE ZahtevZaNabavku.IDTabele =  ' + idStr;
    Open;
  end;

  with mainDataModul.queryProizvodiNaPorudzbenici do
  begin
    SQL.Text := 'SELECT Proizvod.ImeProizvoda, ListaProizvoda.Kolicina, Proizvod.CenaKupovine ' +
                'FROM ListaProizvoda ' +
                'INNER JOIN Proizvod ' +
                'ON ListaProizvoda.IDProizvoda = Proizvod.IDTabele ' +
                'INNER JOIN Porudzbenica ' +
                'ON ListaProizvoda.IDPorudzbenice = Porudzbenica.IDTabele ' +
                'WHERE Porudzbenica.IDTabele =  ' + idStr;
    Open;
  end;

end;

end.
