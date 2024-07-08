unit uConstructorConstraint;

interface

type
  TPessoa = class
  private
    FNome: String;
    procedure SetNome(const Value: String);
  published
    property Nome: String read FNome write SetNome;
  end;

  TNFe<T : class, constructor> = class
    FGeneric : T;
    function GetGeneric: T;
    constructor Create;
  end;

implementation

{ TPessoa }

procedure TPessoa.SetNome(const Value: String);
begin
   FNome := Value;
end;

{ TNFe<T> }

constructor TNFe<T>.Create;
begin
  FGeneric := T.Create;
end;

function TNFe<T>.GetGeneric: T;
begin
  Result := FGeneric;
end;

end.
