unit ecfeditStagiaire;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  Buttons;

type

  { TFormEditStagiaire }

  TFormEditStagiaire = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Memo1: TMemo;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FormEditStagiaire: TFormEditStagiaire;

implementation

{$R *.lfm}

{ TFormEditStagiaire }

procedure TFormEditStagiaire.FormCreate(Sender: TObject);
begin
  //Memo1.Lines.LoadFromFile('Liste_TMCC.txt');
end;

procedure TFormEditStagiaire.BitBtn1Click(Sender: TObject);
begin
  if SaveDialog1.Execute then
  Memo1.Lines.SaveToFile(SaveDialog1.FileName);
  Close;
end;

procedure TFormEditStagiaire.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormEditStagiaire.BitBtn3Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  Memo1.Lines.LoadFromFile(OpenDialog1.FileName);
end;

end.

