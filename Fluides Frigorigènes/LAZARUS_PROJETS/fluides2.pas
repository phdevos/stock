unit fluides2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, sqldb, FileUtil, RTTICtrls, LR_Class, LR_ChBox, Forms, Controls,
  Graphics, Dialogs, StdCtrls, ExtCtrls, EditBtn;

type

  { TFormIntervention }

  TFormIntervention = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    ComboBox1: TComboBox;
    ComboBox10: TComboBox;
    ComboBox11: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    ComboBox5: TComboBox;
    ComboBox6: TComboBox;
    ComboBox7: TComboBox;
    ComboBox8: TComboBox;
    ComboBox9: TComboBox;
    DateEdit1: TDateEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    frReport1: TfrReport;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    GroupBox7: TGroupBox;
    GroupBox8: TGroupBox;
    GroupBox9: TGroupBox;
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
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
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
    procedure ComboBox10EditingDone(Sender: TObject);
    procedure ComboBox11EditingDone(Sender: TObject);
    procedure ComboBox1EditingDone(Sender: TObject);
    procedure ComboBox2EditingDone(Sender: TObject);
    procedure ComboBox3EditingDone(Sender: TObject);
    procedure ComboBox4EditingDone(Sender: TObject);
    procedure ComboBox5EditingDone(Sender: TObject);
    procedure ComboBox6EditingDone(Sender: TObject);
    procedure ComboBox7EditingDone(Sender: TObject);
    procedure ComboBox8EditingDone(Sender: TObject);
    procedure ComboBox9EditingDone(Sender: TObject);
  //  procedure DateEdit1AcceptDate(Sender: TObject; var ADate: TDateTime;
  //  var AcceptDate: Boolean);
  //  procedure DateEdit1Change(Sender: TObject);
    procedure DateEdit1Click(Sender: TObject);
    procedure Edit2EditingDone(Sender: TObject);
    procedure Edit3EditingDone(Sender: TObject);
    procedure Edit4Enter(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure Edit5Enter(Sender: TObject);
    procedure Edit6Enter(Sender: TObject);
    procedure Edit7Enter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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
    ChargeTransfert, ChargeNeuf, RecupTransfert, RecupRecup, BoutTransfert, BoutRecup : String;
    MarqueBalance, NumBalance, MarqueDetecteur, NumDetecteur : String;
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
  //détermination des variables
  NumIntervention:=Edit1.Text;
  NumMachine:=ComboBox1.Text;
  TypeMachine:=ComboBox2.Text;
  TypeFluide:=ComboBox3.Text;
  NaturIntervention:=ComboBox4.Text;
  NomIntervenant:=Edit2.Text;
  PrenomIntervenant:=Edit3.Text;
  Date:=DateEdit1.Text;
  NomFormateur:=ComboBox5.Text;
  Fuite:=Fuite;
  ChargeNeuf:=Edit4.Text;
  ChargeTransfert:=Edit5.Text;
  RecupTransfert:=Edit6.Text;
  RecupRecup:=Edit7.Text;
  MarqueBalance:=ComboBox6.Text;
  NumBalance:=ComboBox7.Text;
  MarqueDetecteur:=ComboBox8.Text;
  NumDetecteur:=ComboBox9.Text;
  BoutTransfert:=ComboBox10.Text;
  BoutRecup:=ComboBox11.Text;

  frReport1.LoadFromFile('FicheIntervention.lrf');
  frReport1.ShowReport;
end;

procedure TFormIntervention.ComboBox10EditingDone(Sender: TObject);
begin
  //Numéro bouteille de transfert
  BoutTransfert:=ComboBox10.Text;
end;

procedure TFormIntervention.ComboBox11EditingDone(Sender: TObject);
begin
  //Numéro bouteille de récupération
end;

procedure TFormIntervention.ComboBox1EditingDone(Sender: TObject);
begin
  // Numéro de machine
  NumMachine := ComboBox1.Text;
end;



procedure TFormIntervention.ComboBox2EditingDone(Sender: TObject);
begin
  //type de machine
  TypeMachine:= ComboBox2.Text;
end;

procedure TFormIntervention.ComboBox3EditingDone(Sender: TObject);
begin
  // type de fluide
  TypeFluide:= ComboBox3.Text;
end;

procedure TFormIntervention.ComboBox4EditingDone(Sender: TObject);
begin
  // nature de l'intervention
  NaturIntervention:= ComboBox4.Text;
end;

procedure TFormIntervention.ComboBox5EditingDone(Sender: TObject);
begin
  // Nom du formateur
  NomFormateur:=ComboBox5.Text;
end;

procedure TFormIntervention.ComboBox6EditingDone(Sender: TObject);
begin
  //Marque balance
   MarqueBalance:=ComboBox6.Text;
end;

procedure TFormIntervention.ComboBox7EditingDone(Sender: TObject);
begin
  // Numéro balance
   NumBalance:=ComboBox7.Text;
end;

procedure TFormIntervention.ComboBox8EditingDone(Sender: TObject);
begin
  //Marque détecteur de fuite
   MarqueDetecteur:=ComboBox8.Text;
end;

procedure TFormIntervention.ComboBox9EditingDone(Sender: TObject);
begin
  // Numéro série détecteur de fuite
   NumDetecteur:=ComboBox9.Text;
end;

procedure TFormIntervention.DateEdit1Click(Sender: TObject);
begin
   // date de l'intervention
   Date:= DateEdit1.Text;
end;



procedure TFormIntervention.Edit2EditingDone(Sender: TObject);
begin
  // Nom de l'intervenant
   NomIntervenant:= Edit2.Text;
end;

procedure TFormIntervention.Edit3EditingDone(Sender: TObject);
begin
  // Prénom de l'intervenant
  PrenomIntervenant:= Edit3.Text;
end;

procedure TFormIntervention.Edit4Enter(Sender: TObject);
begin
  //Charge en fluide neuf
  ChargeNeuf:=Edit4.Text;
end;

procedure TFormIntervention.Edit5Change(Sender: TObject);
begin
    // Charge en fluide récupéré
  ChargeTransfert:=Edit5.Text;
end;

procedure TFormIntervention.Edit5Enter(Sender: TObject);
begin
  // Charge en fluide récupéré
  ChargeTransfert:=Edit5.Text;
end;

procedure TFormIntervention.Edit6Enter(Sender: TObject);
begin
  // Récupération bouteille transfert
  RecupTransfert:=Edit6.Text;
end;

procedure TFormIntervention.Edit7Enter(Sender: TObject);
begin
  // Récupération bouteille récupération
  RecupRecup:=Edit7.Text;
end;

procedure TFormIntervention.FormCreate(Sender: TObject);
begin

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
  if ParName = 'PrenomIntervenant' then ParValue:= (PrenomIntervenant);
  if ParName = 'DateIntervention' then ParValue:= (Date) ;
  if ParName = 'NomFormateur' then ParValue:= (NomFormateur);
  if ParName = 'Fuite' then ParValue:= (fuite);
  if ParName = 'RecupTransfert' then ParValue:= (RecupTransfert);
  if ParName = 'RecupRecup' then ParValue:= (RecupRecup);
  if ParName = 'MarqueBalance' then ParValue:= (MarqueBalance);
  if ParName = 'NumBalance' then ParValue:= (NumBalance);
  if ParName = 'MarqueDetecteur' then ParValue:= (MarqueDetecteur);
  if ParName = 'NumDetecteur' then ParValue:= (NumDetecteur);
  if ParName = 'NaturIntervention' then ParValue:= (NaturIntervention);
  if ParName = 'BouteilleTransfert' then ParValue:= (BoutTransfert);
  if ParName = 'BouteilleRecuperation' then ParValue:= (BoutRecup);
  if ParName = 'ChargeNeuf' then ParValue:= (ChargeNeuf);
  if ParName = 'ChargeRecup' then ParValue:= (ChargeTransfert);
end;

procedure TFormIntervention.RadioButton1Click(Sender: TObject);
begin
  // controle de fuite
  fuite := 'Aucune fuite détectée';
  RadioButton1.Enabled:=False;
  RadioButton2.Enabled:=False;
  RadioButton3.Enabled:=False;
end;

procedure TFormIntervention.RadioButton2Click(Sender: TObject);
begin
  // controle de fuite
   fuite := 'Fuite détectée mais réparée';
   RadioButton1.Enabled:=False;
   RadioButton2.Enabled:=False;
   RadioButton3.Enabled:=False;
end;

procedure TFormIntervention.RadioButton3Click(Sender: TObject);
begin
  // controle de fuite
  fuite := 'Fuite détectée mais non réparée.';
  ChargeNeuf:= '0,00'; ChargeTransfert:= '0,00';
  RadioButton1.Enabled:=False;
  RadioButton2.Enabled:=False;
  RadioButton3.Enabled:=False;
end;

end.
