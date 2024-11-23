unit uFactoryPessoa;



interface

uses uPessoaFisica, uPessoaJuridica, uPessoa;

type

  IFactoryPessoa = interface
    ['{01BFD1F5-4364-409D-98B3-CB6971114774}']
      function PessoaFisica: IPessoa;
      function PessoaJuridica: IPessoa;
  end;

  TFactoryPessoa = class(TInterfacedObject, IFactoryPessoa)
    private
      function PessoaFisica: IPessoa;
      function PessoaJuridica: IPessoa;

    public

    Constructor Create;
    Destructor Destroy; override;

    class function New: IFactoryPessoa;
  end;

implementation

{ TFactoryPessoa }



constructor TFactoryPessoa.Create;
begin

end;

destructor TFactoryPessoa.Destroy;
begin

  inherited;
end;

class function TFactoryPessoa.New: IFactoryPessoa;
begin
  Result := Self.Create;

end;

function TFactoryPessoa.PessoaFisica: IPessoa;
begin
  Result := TPessoaFisica.New;
end;

function TFactoryPessoa.PessoaJuridica: IPessoa;
begin
  Result := TPessoaJuridica.New;
end;

end.
