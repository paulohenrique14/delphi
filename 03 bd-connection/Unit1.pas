unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Mask, Vcl.Grids, Vcl.DBGrids;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBCheckBox1: TDBCheckBox;
    DBNavigator1: TDBNavigator;
    Label6: TLabel;
    txtBusca: TEdit;
    procedure txtBuscaChange(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Unit2DB;





procedure TForm1.txtBuscaChange(Sender: TObject);
begin
DataModule2.FDTable1.Locate('model', txtBusca.Text, [loPartialKey]);
end;

end.
