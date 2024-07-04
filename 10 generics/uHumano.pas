unit uHumano;

interface

type
  TSerHumano = class
  procedure CompraArma;
  private
    FNome  : String;
    FIdade : Integer;
    FArmado: Boolean;
  published
    property Nome  : String  read FNome   write FNome;
    property Idade : Integer read FIdade  write FIdade;
    property Armado: Boolean read FArmado write FArmado;

    constructor Create(PossuiArma: Boolean) overload;
  end;

implementation

{ TSerHumano }

procedure TSerHumano.CompraArma;
begin
  FArmado := True;
end;

constructor TSerHumano.Create(PossuiArma:Boolean);
begin
  FArmado := PossuiArma;
end;

end.
