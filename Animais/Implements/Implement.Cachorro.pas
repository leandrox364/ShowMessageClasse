unit Implement.Cachorro;

interface

uses
  System.Classes,
  System.SysUtils,
  IntercafeAnimal;

type

  TCachorro = class(TInterfacedObject, IAnimal)

  private
    FNome: string;
    FIdade: integer;
    FSexo: string;
    FAnda: string;
    FEmiteSom: string;

    constructor Create;
  public
    destructor Destroy; override;

    class Function New: IAnimal;

    Function Nome: string; overload;
    Function Nome(const Nome: string): IAnimal; overload;

    Function Idade: integer; overload;
    Function Idade(const Idade: integer): IAnimal; overload;

    Function Sexo: string; overload;
    Function Sexo(const Sexo: string): IAnimal; overload;

    Function Anda: string; overload;
    Function Anda(const Anda: string): IAnimal; overload;

    Function EmiteSom: string; overload;
    Function EmiteSom(const EmiteSom: string): IAnimal; overload;

  End;

implementation


{ TCachorro }


function TCachorro.Anda(const Anda: string): IAnimal;
begin
  Result := self;
  FAnda := Anda;
end;

function TCachorro.Anda: string;
begin
  Result := FAnda;
end;

constructor TCachorro.Create;
begin

end;

destructor TCachorro.Destroy;
begin

  inherited;
end;

function TCachorro.EmiteSom(const EmiteSom: string): IAnimal;
begin
  Result := self;
  FEmiteSom := EmiteSom;
end;

function TCachorro.EmiteSom: string;
begin
  Result := FEmiteSom;
end;


function TCachorro.Idade(const Idade: integer): IAnimal;
begin
  Result := self;
  FIdade := Idade;
end;

function TCachorro.Idade: integer;
begin
  Result := FIdade;
end;

class function TCachorro.New: IAnimal;
begin
  Result := self.Create;
end;

function TCachorro.Nome(const Nome: string): IAnimal;
begin
  Result := self;
  FNome := Nome;
end;

function TCachorro.Nome: string;
begin
  Result := FNome;
end;


function TCachorro.Sexo(const Sexo: string): IAnimal;
begin
  Result := self;
  FSexo := Sexo;
end;

function TCachorro.Sexo: string;
begin
  Result := FSexo;
end;

end.
