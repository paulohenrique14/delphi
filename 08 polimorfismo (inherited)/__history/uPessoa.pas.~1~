unit uPessoa;

interface

uses
  System.SysUtils;


type
  TPessoa = class
    private
    FNome: String;
    FDataNascimento: String;
    public
      property Nome: String read FNome write FNome;
      property DataNascimento: String read FDataNascimento write FDataNascimento;
      function idade: Integer;
      function RetornaDados: String; virtual;
  end;
implementation

{ TPessoa }

function TPessoa.idade: Integer;
begin
//  Result :=
end;

function TPessoa.RetornaDados: String;
begin
  Result := FNome + '   ' + FDataNascimento
end;

end.
