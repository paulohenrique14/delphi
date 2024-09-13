unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.Threading, System.IOUtils, ShellAPI,
  Vcl.ExtCtrls;

type
  TFrmPrincipal = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Label1: TLabel;
    Memo1: TMemo;
    Button5: TButton;
    Timer1: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
    ValorGenerico : IFuture<String>;

  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.Button1Click(Sender: TObject);
begin
//   Sleep(5000);
   Label1.Caption := DateTimeToStr(Now);
end;

procedure TFrmPrincipal.Button2Click(Sender: TObject);
begin
   TTask.Run(
   procedure
   begin
      Sleep(5000);
      TThread.Synchronize(TThread.CurrentThread,
      procedure
      begin
         Label1.Caption := DateTimeToStr(Now);
      end);
   end)
end;

procedure TFrmPrincipal.Button3Click(Sender: TObject);
var
   t2: ITask;
begin
   t2 := TTask.Create(
   procedure
   begin
      Sleep(5000);
      TThread.Synchronize(TThread.CurrentThread,
      procedure
      begin
         Label1.Caption := 'Thread com interface!';
      end)
   end);

   t2.Start;
end;

procedure TFrmPrincipal.Button4Click(Sender: TObject);
var
   mRecebeuPedido, mPedidoDoIfood, mParaThread : Boolean;
   t1 : ITask;
   mPath : String;
begin
   mRecebeuPedido := True;
   mPedidoDoIfood := True;
   mParaThread    := False;

   mPath := 'C:\Users\Paulo\Downloads\ifoodrelatorio\cupom_ifood.pdf';

   t1 := TTask.Create(
   procedure
   begin
      if ((mRecebeuPedido) and (mPedidoDoIfood)) then
      begin
         while not mParaThread do
         begin
            if TFile.Exists(mPath) then
            begin
               Tthread.Synchronize(TThread.CurrentThread,
               procedure
               begin

                  ShellExecute(handle,'open',PChar(mPath), '','',SW_SHOWNORMAL);

//                  DeleteFile(PChar(mPath));

               end);

               mParaThread := True;

            end;

            Memo1.Lines.Add('Verifica arquivo');

            Sleep(1000);
         end;
      end;
   end);
   t1.Start;

end;

procedure TFrmPrincipal.Button5Click(Sender: TObject);
var
   t1: ITask;
begin

   t1 := TTask.Run(
   procedure
   begin
      Sleep(5000);
      ValorGenerico := TTask.Future<String>(
      function : String
      begin
         Result := 'Valor padrão';
      end);

      if not Timer1.Enabled then
         Timer1.Enabled := True;

      TThread.Synchronize(TThread.CurrentThread,
      procedure
      begin
         Label1.Caption := ValorGenerico.Value;
      end);

   end);
end;

procedure TFrmPrincipal.Timer1Timer(Sender: TObject);
begin
   if ValorGenerico.Status = TTaskStatus.Completed  then
      Label1.Caption := ValorGenerico.Value
   else
      Label1.Caption := 'esperando valor';


end;

end.

