unit uPessoaJuridica;

interface

uses
  uPessoa;

type


   TPessoaJuridica = class(TInterfacedObject, iPessoa)
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

{ TPessoaJuridica }

constructor TPessoaJuridica.Create;
begin

end;

destructor TPessoaJuridica.Destroy;
begin

  inherited;
end;

class function TPessoaJuridica.New: iPessoa;
begin
   Result := Self.Create;
end;

function TPessoaJuridica.Nome(Value: String): iPessoa;
begin
   Result := Self;
   FNome  := Value;
end;

function TPessoaJuridica.NomeCompleto: String;
begin
   Result := FNome + ' ' + FSobrenome + ' LTDA ME';
end;

function TPessoaJuridica.Sobrenome(Value: String): iPessoa;
begin
   Result     := Self;
   FSobrenome := Value;
end;

end.
