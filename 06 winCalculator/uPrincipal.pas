unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrmCalculadora = class(TForm)
    BtnIgualMultiplicar: TButton;
    BtnPonto: TButton;
    BtnZero: TButton;
    Button4: TButton;
    BtnSoma: TButton;
    BtnTres: TButton;
    BtnDois: TButton;
    BtnUm: TButton;
    BtnCinco: TButton;
    BtnQuatro: TButton;
    BtnSeis: TButton;
    BtnSubtrai: TButton;
    BtnOito: TButton;
    BtnSete: TButton;
    BtnNove: TButton;
    BtnMultiplica: TButton;
    BtnLimpaTudo: TButton;
    BtnPorcentagem: TButton;
    BtnLimpa: TButton;
    BtnDivide: TButton;
    ENum1: TEdit;
    ENum2: TEdit;
    Container: TEdit;
    BtnIgualSubtrair: TButton;
    BtnIgualSomar: TButton;
    BtnIgualDividir: TButton;
    procedure BtnUmClick(Sender: TObject);
    procedure BtnSomaClick(Sender: TObject);
    procedure BtnDoisClick(Sender: TObject);
    function somar(Num1:Integer; Num2:Integer):Double;
    procedure BtnIgualSomarClick(Sender: TObject);

  public
    { Public declarations }
  end;

var
  FrmCalculadora: TFrmCalculadora;

implementation

{$R *.dfm}


procedure TFrmCalculadora.BtnDoisClick(Sender: TObject);
begin
     if BtnIgualSomar.Enabled = false then
     begin
          ENum1.SetFocus;
          ENum1.Text := ENum1.Text + BtnDois.Caption
     end
     else
     begin
          Enum2.SetFocus;
          Enum2.Text := ENum2.Text + BtnDois.Caption;
     end;
end;

procedure TFrmCalculadora.BtnIgualSomarClick(Sender: TObject);
begin
     Container.Text := FloatToStr(somar(StrToInt(ENum1.Text), StrToInt(ENum2.Text)));
end;

procedure TFrmCalculadora.BtnSomaClick(Sender: TObject);
begin
     BtnIgualSomar.Enabled := true;
end;

procedure TFrmCalculadora.BtnUmClick(Sender: TObject);
begin
     if BtnIgualSomar.Enabled = false then
     begin
          ENum1.SetFocus;
          ENum1.Text := ENum1.Text + BtnUm.Caption
     end
     else
     begin
          Enum2.SetFocus;
          Enum2.Text := ENum2.Text + BtnUm.Caption;
     end;
end;


function TFrmCalculadora.somar(Num1, Num2: Integer): Double;
var
Res1: Integer;
begin
     Res1:= Num1 + Num2;
     Result:= Res1;
end;

end.
