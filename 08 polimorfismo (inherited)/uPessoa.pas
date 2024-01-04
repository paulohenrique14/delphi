unit uPessoa;

interface

uses
  System.SysUtils;


type
  TPessoa = class
    private
    FNome: String;
    FDataNascimento: String;
    FDados: String;
    public
      property Nome: String read FNome write FNome;
      property DataNascimento: String read FDataNascimento write FDataNascimento;
      property Dados: String read FDados write FDados;
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
  Dados := 'Leitão ';
end;

end.
