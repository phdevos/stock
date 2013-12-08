unit ecfEditITS;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Buttons;

type

  { TFormEditStagITS }

  TFormEditStagITS = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Memo1: TMemo;
    SaveDialog1: TSaveDialog;
    procedure BitBtn1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FormEditStagITS: TFormEditStagITS;

implementation

{$R *.lfm}

{ TFormEditStagITS }

procedure TFormEditStagITS.BitBtn1Click(Sender: TObject);
begin
  if SaveDialog1.Execute then
  Memo1.Lines.SaveToFile(SaveDialog1.FileName);
end;

end.

