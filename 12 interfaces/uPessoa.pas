unit uPessoa;

interface

uses
  uPrimeiraInterface;

type

   TPessoa = class(TInterfacedObject, iPessoa)
   private
      FNome      : String;
      FSobrenome : String;

      function Nome(Value: String): iPessoa;
      function Sobrenome(Value: String): iPessoa;
      function NomeCompleto: String;
   public
      Constructor Create;
      Destructor Destroy; override;
      class function New : iPessoa;
   end;

implementation

{ TPessoa }

constructor TPessoa.Create;
begin

end;

destructor TPessoa.Destroy;
begin

  inherited;
end;

class function TPessoa.New: iPessoa;
begin
   Result := Self.Create;
end;

function TPessoa.Nome(Value: String): iPessoa;
begin
   Result := Self;
   FNome  := Value;
end;

function TPessoa.NomeCompleto: String;
begin
   Result := FNome + ' ' + FSobrenome;
end;

function TPessoa.Sobrenome(Value: String): iPessoa;
begin
   Result     := Self;
   FSobrenome := Value;
end;

end.
