unit IntercafeAnimal;

interface


type

  IAnimal = interface
    ['{AFDAC5FA-77E7-4D72-A65A-9036AF17090B}']

    Function Nome : string; overload;
    Function Nome(const nome : string) : IAnimal; overload;

    Function Idade : integer; overload;
    Function Idade(const idade : integer) : IAnimal; overload;

    Function Sexo : string; overload;
    Function Sexo(const sexo : string) : IAnimal; overload;

    Function Anda : string; overload;
    Function Anda  (const anda : string) : IAnimal; overload;

    Function EmiteSom : string; overload;
    Function EmiteSom (const emiteSom : string) : IAnimal; overload;

  end;

implementation

end.
