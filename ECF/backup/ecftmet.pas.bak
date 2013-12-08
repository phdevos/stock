unit ecfTMET;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, RTTICtrls, RTTIGrids, ExtendedNotebook, LR_Class,
  Forms, Controls, Graphics, Dialogs, StdCtrls, Buttons, ExtCtrls, Calendar,
  EditBtn, ActnList, ecfeditStagiaire;

type

  { TFormTMET }

  TFormTMET = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    DateEdit1: TDateEdit;
    frReport1: TfrReport;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Memo1: TMemo;
    Memo2: TMemo;
    RadioButtonValide: TRadioButton;
    RadioButtonRefuse: TRadioButton;
    RadioGroupActivite: TRadioGroup;
    SpeedButton1: TSpeedButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure ComboBox1EditingDone(Sender: TObject);
    procedure DateEdit1AcceptDate(Sender: TObject; var ADate: TDateTime;
      var AcceptDate: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure frReport1GetValue(const ParName: String; var ParValue: Variant);
    procedure RadioButtonRefuseClick(Sender: TObject);
    procedure RadioButtonValideClick(Sender: TObject);
    procedure RadioGroupActiviteClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FormTMET: TFormTMET;
  //variables Report
  Activite, Observations, Nom, NomFormateur, CommentairesEchec, Valide, Refuse, Date : String;

implementation

{$R *.lfm}

{ TFormTMET }

procedure TFormTMET.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormTMET.BitBtn2Click(Sender: TObject);
begin
  //déclaration des variables
                Activite:=Label6.Caption;
                NomFormateur:=ComboBox2.Text;
                Date:=DateEdit1.Text;
                Nom:=ComboBox1.Text;
                Observations:=Memo2.Text;
                CommentairesEchec:=Memo1.Text;

  frReport1.LoadFromFile('ECF.lrf');
  frReport1.ShowReport;

end;



procedure TFormTMET.ComboBox1EditingDone(Sender: TObject);
begin
  Nom:=ComboBox1.Text;
  Observations:=Memo2.Text;
end;

procedure TFormTMET.DateEdit1AcceptDate(Sender: TObject; var ADate: TDateTime;
  var AcceptDate: Boolean);
begin
  DateEdit1.Font.Color:=clBlack;
  Date := DateEdit1.Text;

end;

procedure TFormTMET.FormCreate(Sender: TObject);
begin
  ComboBox1.Items.LoadFromFile('Liste_TMET.txt');
  ComboBox2.Items.LoadFromFile('Formateurs.txt');
end;

procedure TFormTMET.frReport1GetValue(const ParName: String; var ParValue: Variant
  );
begin
  {parName = variable Report ParValue = variable programme}
  if ParName = 'Date' then ParValue:= (Date);
  if ParName = 'NomFormateur' then ParValue:= (NomFormateur);
  if ParName = 'Activite' then ParValue:= (Activite);
  if ParName = 'Nom' then ParValue:= (Nom);
  if ParName = 'Observations' then ParValue:= (Observations);
  if ParName = 'CommentairesEchec' then ParValue:= (CommentairesEchec);
  if ParName = 'Valide' then ParValue:= (Valide);
  if ParName = 'Refuse' then ParValue:= (Refuse);
end;

procedure TFormTMET.RadioButtonRefuseClick(Sender: TObject);
begin
  //activation des label et Memo
   Memo1.Enabled:=true;
   Memo1.Color:=clDefault;
   Label4.Enabled:=true;
   Refuse:='X';

end;


procedure TFormTMET.RadioButtonValideClick(Sender: TObject);
begin
 Memo1.Lines.Add('RAS');
 Memo1.Enabled:=False;
 Valide:='X';
end;

procedure TFormTMET.RadioGroupActiviteClick(Sender: TObject);
begin
  if RadioGroupActivite.ItemIndex=0 then Label6.Caption:='Assurer la mise en service et la maintenance des équipements de distribution et d''émission de chauffage à eau chaude et deproduction et de distribution de l''eau chaude sanitaire'
  else if RadioGroupActivite.ItemIndex=1 then Label6.Caption:='Assurer la mise au point et la maintenance des équipements de chauffe de moyenne puissance.'
    else if RadioGroupActivite.ItemIndex=2 then Label6.Caption:='Assurer la mise en service et la maintenance des équipements électriques, hydrauliques et aérauliques des installations de conditionnement d''air.'
      else if RadioGroupActivite.ItemIndex=3 then Label6.Caption:='Exploiter les équipements et proposer des modifications pour améliorer la performance des installations de chauffage et de conditionnement d''air.'
end;
procedure TFormTMET.SpeedButton1Click(Sender: TObject);
begin
  DateEdit1.DefaultToday:=True;
  ComboBox1.Text:='';
  ComboBox2.Text:='Philippe DEVOS';
  Label4.Enabled:=False;
  Label6.Caption:='';
  Memo1.Enabled:=False;
  Memo1.Clear;
  Memo2.Clear;
  RadioGroupActivite.ItemIndex:=-1;
  Valide:=''; Refuse:='';
end;

end.

