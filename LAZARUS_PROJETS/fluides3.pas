unit Fluides3;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, sqlite3conn, FileUtil, LR_Class, LR_DSet, Forms, Controls,
  Graphics, Dialogs;

type

  { TFormReport }

  TFormReport = class(TForm)
    frReport1: TfrReport;
    frUserDataset1: TfrUserDataset;
    procedure frReport1GetValue(const ParName: String; var ParValue: Variant);
    procedure frUserDataset1CheckEOF(Sender: TObject; var Eof: Boolean);
  private
    { private declarations }
  public
    { public declarations }

  end;

var
  FormReport: TFormReport;

implementation

{$R *.lfm}

{ TFormReport }

procedure TFormReport.frReport1GetValue(const ParName: String;
  var ParValue: Variant);
begin
  if (ParName) = 'NumMachine' then ParValue:= NumEquip;
end;

procedure TFormReport.frUserDataset1CheckEOF(Sender: TObject; var Eof: Boolean);
begin

end;

end.

