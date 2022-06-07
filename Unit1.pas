unit Unit1;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.VCLUI.Wait, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TDataModule1 = class(TDataModule)
    FDConnection1: TFDConnection;
    FDQuery1: TFDQuery;
    FDQuery2: TFDQuery;
    FDQuery3: TFDQuery;
    queryInsert: TFDQuery;
    FDQuery4: TFDQuery;
    queryPorudzbenica: TFDQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDataModule1.DataModuleCreate(Sender: TObject);
begin
                                           FDConnection1.Connected := False;
  var path := ExtractFilePath(ParamStr(0)) + '\Nabavka.db';
  FDConnection1.Params.Values['Database'] := path;
  FDConnection1.Connected := True;

  with queryPorudzbenica do
  begin
   Close;
   SQL.Clear;
   SQL.Text :=  'SELECT * FROM Proizvod';
   Open;
  end;

  with FDQuery1 do
  begin
   Close;
   SQL.Clear;
   SQL.Text :=  'SELECT * FROM Korisnici';
   Open;
  end;
  with FDQuery2 do
  begin
   Close;
   SQL.Clear;
   SQL.Text :=  'SELECT * FROM Proizvod';
   Open;
  end;
  with FDQuery3 do
  begin
   Close;
   SQL.Clear;
   SQL.Text :=  'SELECT * FROM ListaProizvodaZahtev';
   Open;
  end;
  with queryInsert do

      end;

     end.

