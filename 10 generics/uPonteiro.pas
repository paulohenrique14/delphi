unit uPonteiro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrmPonteiro = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPonteiro: TFrmPonteiro;

implementation

{$R *.dfm}

procedure TFrmPonteiro.Button1Click(Sender: TObject);
var
   ListaString : TStringList;
begin
   ListaString := TStringList.Create;
   try
      ListaString.Add('Teste');
      ShowMessage('Total de registros ' + IntToStr(ListaString.Count));

   finally
      ListaString.Free;
   end;
end;

procedure TFrmPonteiro.FormCreate(Sender: TObject);
begin
   //ReportMemoryLeaksOnShutdown := True;
end;

end.
