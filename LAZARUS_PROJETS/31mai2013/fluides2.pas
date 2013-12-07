unit fluides2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, sqldb, FileUtil, RTTICtrls, LR_Class, LR_ChBox, Forms, Controls,
  Graphics, Dialogs, StdCtrls, ComCtrls, ExtCtrls, EditBtn, Spin;

type

  { TFormIntervention }

  TFormIntervention = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    ComboBox5: TComboBox;
    DateEdit1: TDateEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    FloatSpinEdit1: TFloatSpinEdit;
    FloatSpinEdit2: TFloatSpinEdit;
    FloatSpinEdit3: TFloatSpinEdit;
    FloatSpinEdit4: TFloatSpinEdit;
    frReport1: TfrReport;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label2: TLabel;
    Label20: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Panel1: TPanel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure ComboBox1EditingDone(Sender: TObject);
    procedure ComboBox2EditingDone(Sender: TObject);
    procedure ComboBox3EditingDone(Sender: TObject);
    procedure ComboBox4Change(Sender: TObject);
    procedure ComboBox4EditingDone(Sender: TObject);
    procedure ComboBox5EditingDone(Sender: TObject);
    procedure DateEdit1AcceptDate(Sender: TObject; var ADate: TDateTime;
      var AcceptDate: Boolean);
    procedure Edit1EditingDone(Sender: TObject);
    procedure Edit2EditingDone(Sender: TObject);
    procedure Edit3EditingDone(Sender: TObject);
    procedure frReport1GetValue(const ParName: String; var ParValue: Variant);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FormIntervention: TFormIntervention;
  var
    NumMachine, NumIntervention, TypeMachine, TypeFluide, NaturIntervention, NomIntervenant  : String;
    PrenomIntervenant, Date, NomFormateur, Fuite : String;
    Intervention : Integer;

implementation

{$R *.lfm}

{ TFormIntervention }


procedure TFormIntervention.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormIntervention.Button2Click(Sender: TObject);
begin

end;

procedure TFormIntervention.Button3Click(Sender: TObject);
begin
  frReport1.LoadFromFile('FicheIntervention.lrf');
  frReport1.ShowReport;
end;

procedure TFormIntervention.ComboBox1EditingDone(Sender: TObject);
begin
  // Numéro de machine
  NumMachine := ComboBox1.Text;
  ComboBox1.Color:= clLime;
  Label19.Width:= Label19.Width + 20;
  Label20.Left:= Label20.Left + 20;
  ComboBox2.Enabled:= True;
  ComboBox1.Enabled:= False;
end;



procedure TFormIntervention.ComboBox2EditingDone(Sender: TObject);
begin
  //type de machine
  TypeMachine:= ComboBox2.Text;
  ComboBox2.Color:= clLime;
  Label19.Width:=Label19.Width + 20;
  Label20.Left:= Label20.Left + 20;
  ComboBox3.Enabled:= True;
  ComboBox2.Enabled:= False;
end;

procedure TFormIntervention.ComboBox3EditingDone(Sender: TObject);
begin
  // type de fluide
  TypeFluide:= ComboBox3.Text;
  ComboBox3.Color:= clLime;
  Label19.Width:=Label19.Width + 20;
  Label20.Left:= Label20.Left + 20;
  ComboBox4.Enabled:= True;
  ComboBox3.Enabled:= False;
end;

procedure TFormIntervention.ComboBox4Change(Sender: TObject);
begin

end;

procedure TFormIntervention.ComboBox4EditingDone(Sender: TObject);
begin
  // nature de l'intervention
  NaturIntervention:= ComboBox4.Text;
  ComboBox4.Color:= clLime;
  Label19.Width:= Label19.Width + 20;
  Label20.Left:= Label20.Left + 20;
  Edit2.Enabled:= True;
  ComboBox4.Enabled:= False;
end;

procedure TFormIntervention.ComboBox5EditingDone(Sender: TObject);
begin
  // Nom du formateur
  NomFormateur:=ComboBox5.Text;
  ComboBox5.Color:= clLime;
  Label19.Width:= Label19.Width + 20;
  Label20.Left:= Label20.Left + 20;
  GroupBox2.Enabled:= True;
  RadioButton1.Enabled:= True;
  RadioButton2.Enabled:= True;
  RadioButton3.Enabled:= True;

end;

procedure TFormIntervention.DateEdit1AcceptDate(Sender: TObject;
  var ADate: TDateTime; var AcceptDate: Boolean);
begin
  // date de l'intervention
   Date:= DateEdit1.Text;
  DateEdit1.Color:= clLime;
  Label19.Width:= Label19.Width + 20;
  Label20.Left:= Label20.Left + 20;
  ComboBox5.Enabled:= True;
  DateEdit1.Enabled:= False;
end;

procedure TFormIntervention.Edit1EditingDone(Sender: TObject);
begin
  // numéro de l'intervention (vient du classeur)
   NumIntervention:=Edit1.Text;
  Edit1.Color:= clLime;
  Label19.Width:= Label19.Width + 20;
  Label20.Left:= Label20.Left + 20;
  GroupBox1.Enabled := True;
  ComboBox1.Enabled:= True;
  Edit1.Enabled:= False;
end;

procedure TFormIntervention.Edit2EditingDone(Sender: TObject);
begin
  // Nom de l'intervenant
   NomIntervenant:= Edit2.Text;
    Edit2.Color:= clLime;
    Label19.Width:= Label19.Width + 20;
    Label20.Left:= Label20.Left + 20;
    Edit3.Enabled:=True;
    Edit2.Enabled:= False;
end;

procedure TFormIntervention.Edit3EditingDone(Sender: TObject);
begin
  // Prénom de l'intervenant
  PrenomIntervenant:= Edit3.Text;
   Edit3.Color:= clLime;
   Label19.Width:= Label19.Width + 20;
   Label20.Left:= Label20.Left + 20;
   DateEdit1.Enabled:=True;
   Edit3.Enabled:= False;
end;

procedure TFormIntervention.frReport1GetValue(const ParName: String;
  var ParValue: Variant);
begin
   {parName = variable Report ParValue = variable programme}
  if ParName = 'NumMachine' then ParValue:= (NumMachine);
  if ParName = 'TypeMachine' then ParValue:= (TypeMachine);
  if ParName = 'TypeFluide' then ParValue:= (TypeFluide);
  if ParName = 'NumIntervention' then ParValue:= (NumIntervention);
  if ParName = 'NomIntervenant' then ParValue:= (NomIntervenant);
  if ParName = 'DateIntervention' then ParValue:= (Date) ;
  if ParName = 'NomFormateur' then ParValue:= (NomFormateur);
  if ParName = 'fuite' then ParValue:= (fuite);
end;

procedure TFormIntervention.RadioButton1Click(Sender: TObject);
begin
  // controle de fuite
  fuite := RadioButton1.Caption;
  RadioButton1.Enabled:= False;
  RadioButton2.Enabled:= False;
  RadioButton3.Enabled:= False;
  GroupBox4.Enabled:= True;
  FloatSpinEdit1.Enabled:= True;
  FloatSpinEdit2.Enabled:= True;
end;

procedure TFormIntervention.RadioButton2Click(Sender: TObject);
begin
  // controle de fuite
   fuite := RadioButton2.Caption;
  RadioButton1.Enabled:= False;
  RadioButton2.Enabled:= False;
  RadioButton3.Enabled:= False;
  GroupBox4.Enabled:= True;
  FloatSpinEdit1.Enabled:= True;
  FloatSpinEdit2.Enabled:= True;
end;

procedure TFormIntervention.RadioButton3Click(Sender: TObject);
begin
  // controle de fuite
  fuite := RadioButton2.Caption;
  RadioButton1.Enabled:= False;
  RadioButton2.Enabled:= False;
  RadioButton3.Enabled:= False;
  GroupBox4.Enabled:= True;
  FloatSpinEdit1.Enabled:= True;
  FloatSpinEdit2.Enabled:= True;
end;

end.

