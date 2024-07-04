unit uLista;

interface

type
  TLista<T> = class
  private
    FCount: Integer;
    FItem: array of T;
  public
    procedure AddItem(Item: T);
    function GetTamanho: Integer;
    function GetItem(Indice: Integer): T;

    constructor create();
  end;

implementation

{ FLista<T> }

procedure TLista<T>.AddItem(Item: T);
begin
  SetLength(FItem, FCount + 1);
  FItem[FCount] := Item;
  Inc(FCount);
end;

constructor TLista<T>.create;
begin
  FCount := 0;
end;

function TLista<T>.GetItem(Indice: Integer): T;
begin
  Result := FItem[Indice];
end;

function TLista<T>.GetTamanho: Integer;
begin
  Result := FCount;
end;

end.
