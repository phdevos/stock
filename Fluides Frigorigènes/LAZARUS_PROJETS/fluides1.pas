unit Fluides1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls, Buttons, Grids, ComCtrls, EditBtn, ButtonPanel, fluides2,
   RTTIGrids;

type

  { TMainForm }

  TMainForm = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Image1: TImage;
    Label1: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
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

procedure TMainForm.Button1Click(Sender: TObject);
begin
  Close;
end;


procedure TMainForm.Button4Click(Sender: TObject);
begin
  FormIntervention.ShowModal;
end;

procedure TMainForm.Image1Click(Sender: TObject);
begin

end;

end.

