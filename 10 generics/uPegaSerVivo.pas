unit uPegaSerVivo;

interface

type
  TPegaSerVivo<T> = class
  private
    FPerigo: String;
    FTipo: String;
    FClasse: T;
    procedure SetPerigo(const Value: String);
    procedure SetTipo(const Value: String);
    procedure SetClasse(const Value: T);
  published
    property Tipo: String read FTipo write SetTipo;
    property Perigo: String read FPerigo write SetPerigo;
    property Classe: T read FClasse write SetClasse;
  end;

implementation

{ TPegaSerVivo<T> }

procedure TPegaSerVivo<T>.SetClasse(const Value: T);
begin
  FClasse := Value;
end;

procedure TPegaSerVivo<T>.SetPerigo(const Value: String);
begin
  FPerigo := Value;
end;

procedure TPegaSerVivo<T>.SetTipo(const Value: String);
begin
  FTipo := Value;
end;

end.
