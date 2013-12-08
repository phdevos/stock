
unit ecfITS;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, LR_Class, Forms, Controls, Graphics, Dialogs,
  StdCtrls, Buttons, ExtCtrls, EditBtn, ecfEditITS, sqlite3conn;

type

  { TFormITS }

  TFormITS = class(TForm)
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
    RadioButtonRefuse: TRadioButton;
    RadioButtonValide: TRadioButton;
    RadioGroupActivite: TRadioGroup;
    SpeedButton1: TSpeedButton;
    SQLite3Connection1: TSQLite3Connection;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
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
  FormITS: TFormITS;
  //variables Report
  Activite, Observations, Nom, NomFormateur, CommentairesEchec, Valide, Refuse, Date : String;
implementation

{$R *.lfm}

{ TFormITS }

procedure TFormITS.BitBtn2Click(Sender: TObject);
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

procedure TFormITS.Button1Click(Sender: TObject);
begin
  FormEditStagITS.ShowModal;
end;

procedure TFormITS.DateEdit1AcceptDate(Sender: TObject; var ADate: TDateTime;
  var AcceptDate: Boolean);
begin
  Date := DateEdit1.Text;
  DateEdit1.Font.Color:=clBlack;
end;

procedure TFormITS.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormITS.FormCreate(Sender: TObject);
begin
  ComboBox2.Items.LoadFromFile('Formateurs.txt');
  ComboBox1.Items.LoadFromFile('Liste_ITS.txt');
end;

procedure TFormITS.frReport1GetValue(const ParName: String;
  var ParValue: Variant);
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

procedure TFormITS.RadioButtonRefuseClick(Sender: TObject);
begin
  //activation des label et Memo
   Memo1.Enabled:=true;
   Memo1.Color:=clDefault;
   Label4.Enabled:=true;
   Refuse:='X';
end;

procedure TFormITS.RadioButtonValideClick(Sender: TObject);
begin
   Memo1.Lines.Add('RAS');
   Memo1.Enabled:=False;
   Valide:='X';
end;


procedure TFormITS.RadioGroupActiviteClick(Sender: TObject);
begin
  if RadioGroupActivite.ItemIndex=0 then Label6.Caption:='Réaliser des éléments d''installations de chauffage et de sanitaire.'
  else if RadioGroupActivite.ItemIndex=1 then Label6.Caption:='Réaliser des installations collectives de chauffage et de sanitaire.'
    else if RadioGroupActivite.ItemIndex=2 then Label6.Caption:='Réaliser des installations individuelles de chauffage et sanitaire.'
end;

procedure TFormITS.SpeedButton1Click(Sender: TObject);
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

