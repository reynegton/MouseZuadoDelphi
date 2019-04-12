program MouseZ;

uses
  Forms,
  Mouse in 'Mouse.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.ShowMainForm := false;
  Application.Title := 'Mouse';
  Application.Name := 'Mouse';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
