unit uInterfaceGenerica;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
   IQualquerCoisa<T> = interface
   ['{A8B2648A-A223-4018-8C8B-DCBD70BD4D9C}']

      function Retorno : T;
      procedure Adiciona(Valor:T);
   end;

   TQualquerCoisa<T> = class(TInterfacedObject, IQualquerCoisa<T>)
      FValue: T;
      procedure Adiciona(Valor: T);
      function Retorno : T;
   end;

type
  TFrmInterfaceGenerica = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmInterfaceGenerica: TFrmInterfaceGenerica;

implementation

{$R *.dfm}

{ TQualquerCoisa<T> }

procedure TQualquerCoisa<T>.Adiciona(Valor: T);
begin

end;

function TQualquerCoisa<T>.Retorno: T;
begin

end;

procedure TFrmInterfaceGenerica.Button1Click(Sender: TObject);
var
   QualquerCoisa: IQualquerCoisa<String>;
   OutraCoisa: IQualquerCoisa<String>;
begin
   QualquerCoisa := TQualquerCoisa<String>.Create;

   QualquerCoisa.Adiciona('Jose');

   OutraCoisa.Adiciona('Jos[e');  //nao pode

end;

end.
