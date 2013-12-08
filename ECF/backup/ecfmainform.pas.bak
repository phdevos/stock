unit ecfMainForm;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, SynEdit, Forms, Controls, Graphics, Dialogs,
  ExtCtrls, StdCtrls, Buttons, ecfTMET, ecfits, ecfeditStagiaire;

type

  { TMainForm }

  TMainForm = class(TForm)
    Bevel1: TBevel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    Image1: TImage;
    Image2: TImage;
    StaticText1: TStaticText;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);

  private
    { private declarations }
  public
    { public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.lfm}

{ TMainForm }



procedure TMainForm.BitBtn3Click(Sender: TObject);
begin
  FormTMET.Show;
end;

procedure TMainForm.BitBtn4Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TMainForm.BitBtn5Click(Sender: TObject);
begin
  FormEditStagiaire.Show;;
end;


procedure TMainForm.BitBtn1Click(Sender: TObject);
begin
  FormITS.Show;
end;

end.

