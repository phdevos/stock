program project1;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, runtimetypeinfocontrols, lazcontrols, ecfTMET,
 ecfEditTMET, ecfITS, ecfEditITS
  { you can add units after this };

{$R *.res}

begin
  Application.Title:='Générateur ECF';
  RequireDerivedFormResource := True;
  Application.Initialize;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TFormTMET, FormTMET);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TFormITS, FormITS);
  Application.CreateForm(TFormEditStagITS, FormEditStagITS);
  Application.Run;
end.
