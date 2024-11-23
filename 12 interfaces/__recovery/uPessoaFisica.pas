unit uPessoaFisica;

interface

uses
  uPessoa;

type

  TPessoaFisica = class(TInterfacedObject, IPessoa)
    private
      FNome      : String;
      FSobrenome : String;

      function Nome(Value: String): iPessoa; overload;
      function Nome: String; Overload;
      function Sobrenome(Value: String): iPessoa;
      function NomeCompleto: String;

    public

      Constructor Create;
      Destructor Destroy; override;

      class function New: IPessoa;
  end;


implementation

{ TPessoa }

constructor TPessoaFisica.Create;
begin

end;

destructor TPessoaFisica.Destroy;
begin

  inherited;
end;

class function TPessoaFisica.New: IPessoa;
begin
  Result := Self.Create;
end;

function TPessoaFisica.Nome(Value: String): iPessoa;
begin
  Result := Self;
  FNome := Value;

end;

function TPessoaFisica.Nome: String;
begin
  Result := FNome;
end;

function TPessoaFisica.NomeCompleto: String;
begin
  Result := FNome + ' ' + FSobrenome;
end;

function TPessoaFisica.Sobrenome(Value: String): iPessoa;
begin
  Result := Self;
  FSobreNome := Value;
end;

end.
