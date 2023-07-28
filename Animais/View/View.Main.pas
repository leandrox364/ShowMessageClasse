unit View.Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  IntercafeAnimal, Implement.Cachorro;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
    FAnimal : IAnimal;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation


{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  ShowMessage(
  'Nome: '      + FAnimal.Nome + #13 +
  'Idade: '     + FAnimal.Idade.ToString + #13 +
  'Sexo: '      + FAnimal.Sexo + #13 +
  'Anda: '      + FAnimal.Anda + #13 +
  'Emite Som: ' + FAnimal.EmiteSom);

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  ShowMessage('Nome: '  + FAnimal.Nome);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  ShowMessage('Idade: ' + FAnimal.Idade.ToString);
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  ShowMessage('Sexo: ' + FAnimal.Sexo);
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  ShowMessage('Anda: '  + FAnimal.Anda);
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  ShowMessage('Emite Som: ' + FAnimal.EmiteSom);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FAnimal := TCachorro.new;

  FAnimal
  .Nome('Derrota.')
  .Idade(5)
  .Sexo('Masculino.')
  .Anda('Sim, tem 4 patas.')
  .EmiteSom('Sim, Ele late.');

end;

end.
