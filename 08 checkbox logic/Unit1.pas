unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    RBNota: TRadioButton;
    RBRelatorio: TRadioButton;
    CBNota: TCheckBox;
    CBRelatorio: TCheckBox;
    RBCancela: TRadioButton;
    procedure CBRelatorioClick(Sender: TObject);
    procedure RBCancelaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.CBRelatorioClick(Sender: TObject);
begin
     RbNota.Enabled := CbNota.Checked;
     RbRelatorio.Enabled := CbRelatorio.Checked;

     if (CBNota.Checked) or (CBRelatorio.Checked) then
        RbCancela.Checked := false;
end;

procedure TForm1.RBCancelaClick(Sender: TObject);
begin
     if RbCancela.Checked then
     begin
          CBNota.Checked :=false;
          CBRelatorio.Checked :=false;
     end;

end;

end.
