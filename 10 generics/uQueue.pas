unit uQueue;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Generics.Collections;

type
  TFrmQueue = class(TForm)
    Memo1: TMemo;
    Label1: TLabel;
    EdtValor: TEdit;
    BtnEnqueue: TButton;
    BtnDequeue: TButton;
    BtnExtract: TButton;
    BtnPeek: TButton;
    BtnTrimExcess: TButton;
    BtnCount: TButton;
    BtnCapacity: TButton;
    procedure BtnEnqueueClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnPeekClick(Sender: TObject);
    procedure BtnDequeueClick(Sender: TObject);
    procedure BtnExtractClick(Sender: TObject);
    procedure BtnCountClick(Sender: TObject);
    procedure BtnCapacityClick(Sender: TObject);
    procedure BtnTrimExcessClick(Sender: TObject);
  private
    Fila : TQueue<String>;
  public
    { Public declarations }
  end;

var
  FrmQueue: TFrmQueue;

implementation

{$R *.dfm}

procedure TFrmQueue.BtnCapacityClick(Sender: TObject);
begin
   Memo1.Lines.Add(Fila.Capacity.ToString)
end;

procedure TFrmQueue.BtnCountClick(Sender: TObject);
begin
   Memo1.Lines.Add(Fila.Count.ToString)
end;

procedure TFrmQueue.BtnDequeueClick(Sender: TObject);
begin
   Memo1.Lines.Add(Fila.Dequeue)
end;

procedure TFrmQueue.BtnEnqueueClick(Sender: TObject);
begin
   Fila.Enqueue(EdtValor.Text);
end;

procedure TFrmQueue.BtnExtractClick(Sender: TObject);
begin
  Memo1.Lines.Add(Fila.Extract);
end;

procedure TFrmQueue.BtnPeekClick(Sender: TObject);
begin
   Memo1.Lines.Add(Fila.Peek);
end;

procedure TFrmQueue.BtnTrimExcessClick(Sender: TObject);
begin
   Fila.TrimExcess;
end;

procedure TFrmQueue.FormCreate(Sender: TObject);
begin
   Fila := TQueue<String>.Create;
end;

end.
