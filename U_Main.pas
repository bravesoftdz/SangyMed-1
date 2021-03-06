unit U_Main;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, U_Base_Form,
  FMX.TabControl, FMX.TreeView, FMX.Layouts, FMX.Controls.Presentation,
  FMX.StdCtrls, FMX.Objects, FMX.Ani, FMX.Effects, Data.Bind.EngExt,
  FMX.Bind.DBEngExt, System.Rtti, System.Bindings.Outputs, Data.Bind.Components,
  Data.Bind.DBScope, Data.Bind.Grid, U_Frame_Principale, U_Frame_Serologie,
  U_Frame_Biochimic, U_Frame_Hemostase, U_Frame_Hemogramme, U_Frame_Information,
  FMX.Edit, U_Frame_Ordonnance, FMX.Menus, FMX.Grid.Style, FMX.ScrollBox,
  FMX.Grid, FMX.Bind.Grid, FMX.Bind.Editors, FireDAC.Stan.Def,
  FireDAC.FMXUI.Wait, FireDAC.Phys.SQLiteWrapper, FireDAC.Stan.Intf,
  FireDAC.Phys, FireDAC.Phys.SQLite, FMX.ListBox, FMX.DateTimeCtrls,
  FireDAC.UI.Intf, FireDAC.Comp.UI;

type
  TMain = class(TBase_Form)
    ListT: TTabControl;
    Medical: TTabItem;
    Panel5: TPanel;
    TreeView1: TTreeView;
    T_Accueil: TTreeViewItem;
    T_Patient: TTreeViewItem;
    Patient_Recherche: TTreeViewItem;
    New_Patient: TTreeViewItem;
    T_RDV: TTreeViewItem;
    HeaderT: TTabControl;
    H_Accueil: TTabItem;
    Panel4: TPanel;
    Layout6: TLayout;
    Layout22: TLayout;
    Label5: TLabel;
    ShadowEffect7: TShadowEffect;
    Label8: TLabel;
    Label4: TLabel;
    ShadowEffect9: TShadowEffect;
    ColorAnimation2: TColorAnimation;
    Layout24: TLayout;
    Label11: TLabel;
    ShadowEffect6: TShadowEffect;
    Label14: TLabel;
    Label10: TLabel;
    ShadowEffect3: TShadowEffect;
    ColorAnimation5: TColorAnimation;
    Layout25: TLayout;
    Label2: TLabel;
    ShadowEffect2: TShadowEffect;
    Label3: TLabel;
    Label1: TLabel;
    ShadowEffect1: TShadowEffect;
    ColorAnimation1: TColorAnimation;
    Line6: TLine;
    Line7: TLine;
    Line8: TLine;
    Line9: TLine;
    Layout23: TLayout;
    Label12: TLabel;
    ShadowEffect12: TShadowEffect;
    ColorAnimation4: TColorAnimation;
    Label13: TLabel;
    ShadowEffect13: TShadowEffect;
    Label7: TLabel;
    ShadowEffect5: TShadowEffect;
    Label9: TLabel;
    Line1: TLine;
    Label6: TLabel;
    ShadowEffect4: TShadowEffect;
    ColorAnimation3: TColorAnimation;
    H_Editeur: TTabItem;
    Panel6: TPanel;
    Layout26: TLayout;
    Layout33: TLayout;
    Label70: TLabel;
    ShadowEffect58: TShadowEffect;
    Label71: TLabel;
    ColorAnimation34: TColorAnimation;
    ShadowEffect59: TShadowEffect;
    Layout34: TLayout;
    Label72: TLabel;
    ShadowEffect60: TShadowEffect;
    Label73: TLabel;
    ShadowEffect61: TShadowEffect;
    ColorAnimation35: TColorAnimation;
    Line17: TLine;
    Line18: TLine;
    Layout35: TLayout;
    Label74: TLabel;
    ShadowEffect62: TShadowEffect;
    Label75: TLabel;
    ColorAnimation36: TColorAnimation;
    ShadowEffect63: TShadowEffect;
    Line16: TLine;
    H_Gen_Patient: TTabItem;
    Panel10: TPanel;
    Layout: TLayout;
    Layout_Exit_Patient: TLayout;
    Label16: TLabel;
    ShadowEffect10: TShadowEffect;
    Label15: TLabel;
    ColorAnimation6: TColorAnimation;
    ShadowEffect8: TShadowEffect;
    Layout5: TLayout;
    Label28: TLabel;
    ShadowEffect19: TShadowEffect;
    Label27: TLabel;
    ShadowEffect20: TShadowEffect;
    ColorAnimation15: TColorAnimation;
    Layout7: TLayout;
    Label29: TLabel;
    ShadowEffect21: TShadowEffect;
    Label30: TLabel;
    ColorAnimation16: TColorAnimation;
    ShadowEffect22: TShadowEffect;
    Layout8: TLayout;
    Label31: TLabel;
    ShadowEffect23: TShadowEffect;
    Label64: TLabel;
    Label32: TLabel;
    ColorAnimation17: TColorAnimation;
    ShadowEffect24: TShadowEffect;
    Line2: TLine;
    Line3: TLine;
    Line4: TLine;
    Line5: TLine;
    Layout18: TLayout;
    Label51: TLabel;
    ShadowEffect43: TShadowEffect;
    Label63: TLabel;
    ShadowEffect53: TShadowEffect;
    Label66: TLabel;
    ShadowEffect56: TShadowEffect;
    Label62: TLabel;
    ShadowEffect52: TShadowEffect;
    Line14: TLine;
    Line15: TLine;
    Label61: TLabel;
    ShadowEffect51: TShadowEffect;
    ColorAnimation31: TColorAnimation;
    Label65: TLabel;
    ShadowEffect55: TShadowEffect;
    ColorAnimation33: TColorAnimation;
    Label52: TLabel;
    ShadowEffect44: TShadowEffect;
    ColorAnimation27: TColorAnimation;
    Line10: TLine;
    H_Gen_RechercheP: TTabItem;
    Panel12: TPanel;
    Layout29: TLayout;
    Layout_Exit_RechercheP: TLayout;
    Label17: TLabel;
    ShadowEffect11: TShadowEffect;
    Label18: TLabel;
    ColorAnimation7: TColorAnimation;
    ShadowEffect14: TShadowEffect;
    Layout15: TLayout;
    Label45: TLabel;
    ShadowEffect37: TShadowEffect;
    Label46: TLabel;
    ShadowEffect38: TShadowEffect;
    ColorAnimation24: TColorAnimation;
    Layout16: TLayout;
    Label47: TLabel;
    ShadowEffect39: TShadowEffect;
    Label48: TLabel;
    ColorAnimation25: TColorAnimation;
    ShadowEffect40: TShadowEffect;
    Layout17: TLayout;
    Label50: TLabel;
    ShadowEffect42: TShadowEffect;
    Label49: TLabel;
    ColorAnimation26: TColorAnimation;
    ShadowEffect41: TShadowEffect;
    Line20: TLine;
    Line21: TLine;
    Line22: TLine;
    Line23: TLine;
    H_Gen_NouveauP: TTabItem;
    Panel13: TPanel;
    Layout30: TLayout;
    Layout20: TLayout;
    Label56: TLabel;
    ShadowEffect48: TShadowEffect;
    Label55: TLabel;
    ColorAnimation29: TColorAnimation;
    ShadowEffect47: TShadowEffect;
    Layout3: TLayout;
    Label19: TLabel;
    ShadowEffect15: TShadowEffect;
    Label20: TLabel;
    ColorAnimation8: TColorAnimation;
    ShadowEffect16: TShadowEffect;
    Layout19: TLayout;
    Label53: TLabel;
    ShadowEffect45: TShadowEffect;
    Label54: TLabel;
    ColorAnimation28: TColorAnimation;
    ShadowEffect46: TShadowEffect;
    Line11: TLine;
    Line12: TLine;
    Line13: TLine;
    MainT: TTabControl;
    P_Accueil: TTabItem;
    L_Left_P_Accueil: TLayout;
    GrouBox1_Table: TGroupBox;
    Label_Refresh1: TLabel;
    ColorAnimation10: TColorAnimation;
    FloatAnimation1: TFloatAnimation;
    GrouBox3_Table: TGroupBox;
    Label_Refresh3: TLabel;
    ColorAnimation12: TColorAnimation;
    FloatAnimation3: TFloatAnimation;
    L_Right_P_Accueil: TLayout;
    GrouBox2_Table: TGroupBox;
    Label_Refresh2: TLabel;
    ColorAnimation11: TColorAnimation;
    FloatAnimation2: TFloatAnimation;
    GrouBox4_Table: TGroupBox;
    Label_Refresh4: TLabel;
    ColorAnimation13: TColorAnimation;
    FloatAnimation4: TFloatAnimation;
    Patient: TTabItem;
    StatusBar1: TStatusBar;
    Label26: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Status_Edit1: TEdit;
    Status_Edit2: TEdit;
    Status_Edit3: TEdit;
    Refresh_Patient_Table: TLabel;
    ColorAnimation14: TColorAnimation;
    FloatAnimation5: TFloatAnimation;
    Recherche_Patient: TTabItem;
    Layout1: TLayout;
    Layout2: TLayout;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    RB_Nom: TRadioButton;
    RB_Prenom: TRadioButton;
    GroupBox3: TGroupBox;
    RB_Interne: TRadioButton;
    RB_Externe: TRadioButton;
    Label76: TLabel;
    GroupBox4: TGroupBox;
    Layout31: TLayout;
    Edit_Recherche: TEdit;
    Nouveau_Patient: TTabItem;
    TabControl_NouveauP: TTabControl;
    TabItem1: TTabItem;
    Frame_Information: TFrame2;
    TabItem2: TTabItem;
    Frame_Hemogramme: TFrame3;
    TabItem3: TTabItem;
    Frame_Hemostase: TFrame4;
    TabItem4: TTabItem;
    Frame_Biochimic: TFrame6;
    TabItem5: TTabItem;
    Frame_Serologie: TFrame5;
    Frame_Principale: TFrame1;
    Edit_Patient: TTabItem;
    Frame_EP_Principale: TFrame1;
    TabControl1: TTabControl;
    TabItem8: TTabItem;
    Frame_EP_Information: TFrame2;
    TabItem9: TTabItem;
    Frame_EP_Hemogramme: TFrame3;
    TabItem10: TTabItem;
    Frame_EP_Hemostase: TFrame4;
    TabItem11: TTabItem;
    Frame_EP_Biochimic: TFrame6;
    TabItem12: TTabItem;
    Frame_EP_Serologie: TFrame5;
    PopupMenu1: TPopupMenu;
    StringGrid1: TStringGrid;
    StringGrid2: TStringGrid;
    StringGrid3: TStringGrid;
    StringGrid4: TStringGrid;
    StringGrid5: TStringGrid;
    StringGrid6: TStringGrid;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    BindSourceDB2: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB2: TLinkGridToDataSource;
    BindSourceDB3: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB3: TLinkGridToDataSource;
    PoP_Hemogramme: TMenuItem;
    PoP_Biochimic: TMenuItem;
    PoP_Serologie: TMenuItem;
    PoP_Hemostase: TMenuItem;
    Label23: TLabel;
    PopupMenu2: TPopupMenu;
    PoP2_Hemog: TMenuItem;
    PoP2_Hemos: TMenuItem;
    PoP2_Boi: TMenuItem;
    PoP2_Serologie: TMenuItem;
    BindSourceDB4: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB4: TLinkGridToDataSource;
    Layout4: TLayout;
    Label21: TLabel;
    ShadowEffect17: TShadowEffect;
    Label223: TLabel;
    ColorAnimation9: TColorAnimation;
    ShadowEffect18: TShadowEffect;
    BindSourceDB5: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB5: TLinkGridToDataSource;
    BindSourceDB6: TBindSourceDB;
    LinkGridToDataSourceBindSourceDB6: TLinkGridToDataSource;
    Layout9: TLayout;
    Label22: TLabel;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    SaveDialog1: TSaveDialog;
    Layout10: TLayout;
    Layout11: TLayout;
    Layout12: TLayout;
    Edit_Search_Wilaya: TEdit;
    Edit_Search_Commune: TEdit;
    Edit2: TEdit;
    Layout13: TLayout;
    Rectangle1: TRectangle;
    Rectangle2: TRectangle;
    Layout14: TLayout;
    Label24: TLabel;
    ShadowEffect25: TShadowEffect;
    Label25: TLabel;
    ColorAnimation18: TColorAnimation;
    ShadowEffect26: TShadowEffect;
    Line19: TLine;
    Line24: TLine;
    Layout21: TLayout;
    Label33: TLabel;
    ShadowEffect27: TShadowEffect;
    Label34: TLabel;
    ColorAnimation19: TColorAnimation;
    ShadowEffect28: TShadowEffect;
    Line25: TLine;
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormPaint(Sender: TObject; Canvas: TCanvas; const ARect: TRectF);
    procedure Label12Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Label6Click(Sender: TObject);
    procedure T_AccueilClick(Sender: TObject);
    procedure T_PatientClick(Sender: TObject);
    procedure Patient_RechercheClick(Sender: TObject);
    procedure New_PatientClick(Sender: TObject);
    procedure T_RDVClick(Sender: TObject);
    procedure P_AccueilClick(Sender: TObject);
    procedure PatientClick(Sender: TObject);
    procedure Recherche_PatientClick(Sender: TObject);
    procedure Nouveau_PatientClick(Sender: TObject);
    procedure RDVClick(Sender: TObject);
    procedure OrdonnanceClick(Sender: TObject);
    procedure Label52Click(Sender: TObject);
    procedure Label65Click(Sender: TObject);
    procedure Label61Click(Sender: TObject);
    procedure Label30Click(Sender: TObject);
    procedure Label15Click(Sender: TObject);
    procedure Label32Click(Sender: TObject);
    procedure Label223Click(Sender: TObject);
    procedure Label48Click(Sender: TObject);
    procedure Label18Click(Sender: TObject);
    procedure Label55Click(Sender: TObject);
    procedure Frame_PrincipaleButton1Click(Sender: TObject);
    procedure Label54Click(Sender: TObject);
    procedure Label20Click(Sender: TObject);
    procedure Frame_EP_PrincipaleButton1Click(Sender: TObject);
    procedure Frame_EP_PrincipaleButton3Click(Sender: TObject);
    procedure Frame_EP_PrincipaleButton2Click(Sender: TObject);
    procedure Frame_PrincipaleButton2Click(Sender: TObject);
    procedure FloatAnimation2Finish(Sender: TObject);
    procedure FloatAnimation4Finish(Sender: TObject);
    procedure FloatAnimation5Finish(Sender: TObject);
    procedure StringGrid5CellClick(const Column: TColumn; const Row: Integer);
    procedure StringGrid5CellDblClick(const Column: TColumn;
      const Row: Integer);
    procedure StringGrid6CellClick(const Column: TColumn; const Row: Integer);
    procedure StringGrid6CellDblClick(const Column: TColumn;
      const Row: Integer);
    procedure FormResize(Sender: TObject);
    procedure Nouveau_PatientResize(Sender: TObject);
    procedure Edit_PatientResize(Sender: TObject);
    procedure P_AccueilResize(Sender: TObject);
    procedure Label_Refresh2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure Label_Refresh2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure Label_Refresh4MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure Label_Refresh4MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure Label_Refresh1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure Label_Refresh1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure Label_Refresh3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure Label_Refresh3MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Single);
    procedure Refresh_Patient_TableMouseUp(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Single);
    procedure Label27Click(Sender: TObject);
    procedure PoP2_HemosClick(Sender: TObject);
    procedure Refresh_Patient_TableMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Single);
    procedure PoP2_HemogClick(Sender: TObject);
    procedure PoP2_BoiClick(Sender: TObject);
    procedure PoP2_SerologieClick(Sender: TObject);
    procedure Label71Click(Sender: TObject);
    procedure PoP_BiochimicClick(Sender: TObject);
    procedure PoP_HemogrammeClick(Sender: TObject);
    procedure PoP_HemostaseClick(Sender: TObject);
    procedure PoP_SerologieClick(Sender: TObject);
    procedure Edit_RechercheChangeTracking(Sender: TObject);
    procedure RB_NomChange(Sender: TObject);
    procedure RB_PrenomChange(Sender: TObject);
    procedure RB_InterneChange(Sender: TObject);
    procedure RB_ExterneChange(Sender: TObject);
    procedure Label76Click(Sender: TObject);
    procedure Edit_Search_WilayaChangeTracking(Sender: TObject);
    procedure Edit_Search_CommuneChangeTracking(Sender: TObject);
    procedure Edit2ChangeTracking(Sender: TObject);
    procedure Label49Click(Sender: TObject);
    procedure Label46Click(Sender: TObject);
    procedure FloatAnimation1Finish(Sender: TObject);
    procedure FloatAnimation3Finish(Sender: TObject);
    procedure Label10Click(Sender: TObject);
    procedure LoadParam;
    procedure Label73Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Label75Click(Sender: TObject);
    procedure SaveDialog1TypeChange(Sender: TObject);
    procedure Label25Click(Sender: TObject);
    procedure Label34Click(Sender: TObject);
    procedure MainTDblClick(Sender: TObject);
  private
    { Private declarations }
    WidthX, HeightX: Integer;
  public
    { Public declarations }
    Patient_ID, ID_Medecin, Nom: String;
    Pass, Privilege: Boolean;
  end;

var
  Main: TMain;

implementation

Uses
  U_Parametre, U_Connecter, U_Entreprise, Winapi.Windows, U_DataModule,
  FireDAC.Comp.Client, U_Fenetre, U_Print_HM, U_Print_Bio, U_Print_HS,
  U_Print_SR, U_Propre, ShellApi;
{$R *.fmx}
{$R Alg_Res.RES}

procedure LoadFM(const Dlg: TFenetre);
Begin
  With Dlg do
  Begin
    Label2.StyledSettings := Label2.StyledSettings - [TStyledSetting.FontColor];
    Label4.StyledSettings := Label4.StyledSettings - [TStyledSetting.FontColor];
    Label12.StyledSettings := Label12.StyledSettings -
      [TStyledSetting.FontColor];
    Label6.StyledSettings := Label6.StyledSettings - [TStyledSetting.FontColor];
    Label10.StyledSettings := Label10.StyledSettings -
      [TStyledSetting.FontColor];
  End;
End;

procedure LoadFP(const Dlg: TFenetre);
Begin
  With Dlg do
  Begin
    Label2.StyledSettings := Label2.StyledSettings + [TStyledSetting.FontColor];
    Label4.StyledSettings := Label4.StyledSettings + [TStyledSetting.FontColor];
    Label12.StyledSettings := Label12.StyledSettings +
      [TStyledSetting.FontColor];
    Label6.StyledSettings := Label6.StyledSettings + [TStyledSetting.FontColor];
    Label10.StyledSettings := Label10.StyledSettings +
      [TStyledSetting.FontColor];
  End;
End;

procedure StringGrid5ColResize;
Var
  i: Integer;
Begin
  With Main do
  Begin
    for i := 0 to 15 do
    Begin
      StringGrid5.Columns[i].Width := 120;
      if (i = 0) then
        StringGrid5.Columns[i].Width := 80;
      if (i = 5) then
        StringGrid5.Columns[i].Width := 70;
      if (i = 6) then
        StringGrid5.Columns[i].Width := 70;
    End;
    for i := 0 to 2 do
    Begin
      StringGrid1.Columns[i].Width := 140;
      StringGrid3.Columns[i].Width := 140;
      StringGrid2.Columns[i].Width := 140;
      StringGrid4.Columns[i].Width := 140;
    End;
  End;
End;

procedure Load(Top1, Top2, Top3, Top4: Integer);
Begin
  if (Main.Privilege = True) then
  Begin
    With DataModule1 do
    Begin
      FDQ_Groupage.Active := False;
      FDQ_Patient.Active := False;
      FDQ_Patient_Table.Active := False;
      FDQ_Homme.Active := False;
      FDQ_Femme.Active := False;
      FDQ_Groupage.SQl.Clear;
      FDQ_Groupage.SQl.Text :=
        ('Select Nom, Prenom, Groupage From Patient Where Groupage !="Null" ORDER BY Date_de_Entre DESC LIMIT '
        + Top2.ToString + ';');
      FDQ_Groupage.Active := True;
      // Patient Table
      FDQ_Patient.SQl.Clear;
      FDQ_Patient.SQl.Text :=
        ('Select Nom, Prenom,Type From Patient ORDER BY Date_de_Entre DESC LIMIT '
        + Top4.ToString + ';');
      FDQ_Patient.Active := True;
      // Homme
      FDQ_Homme.SQl.Clear;
      FDQ_Homme.SQl.Text :=
        ('Select Nom, Prenom, Date_de_Entre From Patient Where Sexe="Homme" ORDER BY Date_de_Entre DESC LIMIT '
        + Top1.ToString + ';');
      FDQ_Homme.Active := True;
      // Femme
      FDQ_Femme.SQl.Clear;
      FDQ_Femme.SQl.Text :=
        ('Select Nom,Prenom, Date_de_Entre From Patient Where Sexe="Femme" ORDER BY Date_de_Entre DESC LIMIT '
        + Top3.ToString + ';');
      FDQ_Femme.Active := True;
      // Main patient Table
      FDQ_Patient_Table.SQl.Clear;
      FDQ_Patient_Table.SQl.Text :=
        ('Select Patient_ID, Nom, Prenom, Date_de_Nai, Date_de_Entre, Type, Sexe, Etat_Civil, Wilaya, Commune, Adresse, Mobile, Email, Groupage, Telephone, Fax From Patient ;');
      FDQ_Patient_Table.Active := True;
    End;
  End
  else
  Begin
    With DataModule1 do
    Begin
      FDQ_Groupage.Active := False;
      FDQ_Patient.Active := False;
      FDQ_Patient_Table.Active := False;
      FDQ_Groupage.SQl.Clear;
      FDQ_Groupage.SQl.Text :=
        ('Select Nom, Prenom, Groupage From Patient Where Groupage!="Null" And ID="'
        + Main.ID_Medecin + '" ORDER BY Date_de_Entre DESC LIMIT ' +
        Top2.ToString + '0;');
      FDQ_Groupage.Active := True;
      // Patient Table
      FDQ_Patient.SQl.Clear;
      FDQ_Patient.SQl.Text := ('Select Nom, Prenom,Type From Patient Where ID="'
        + Main.ID_Medecin + '" ORDER BY Date_de_Entre DESC LIMIT ' +
        Top4.ToString + ';');
      FDQ_Patient.Active := True;
      // Homme
      FDQ_Homme.SQl.Clear;
      FDQ_Homme.SQl.Text :=
        ('Select Nom,Prenom, Date_de_Entre From Patient Where Sexe="Homme" And ID="'
        + Main.ID_Medecin + '"ORDER BY Date_de_Entre DESC LIMIT ' +
        Top1.ToString + ';');
      FDQ_Homme.Active := True;
      // Femme
      FDQ_Femme.SQl.Clear;
      FDQ_Femme.SQl.Text :=
        ('Select Nom,Prenom, Date_de_Entre From Patient Where Sexe="Femme" And ID="'
        + Main.ID_Medecin + '"ORDER BY Date_de_Entre DESC LIMIT ' +
        Top3.ToString + ';');
      FDQ_Femme.Active := True;
      // Main patient Table
      FDQ_Patient_Table.SQl.Clear;
      FDQ_Patient_Table.SQl.Text :=
        ('Select Patient_ID, Nom, Prenom, Date_de_Nai, Date_de_Entre, Type, Sexe, Etat_Civil, Wilaya, Commune, Adresse, Mobile, Email, Groupage, Telephone, Fax From Patient '
        + 'Where ID="' + Main.ID_Medecin +
        '" ORDER BY Date_de_Entre DESC LIMIT 10;');
      FDQ_Patient_Table.Active := True;
    End;
  End;
  StringGrid5ColResize;
End;

procedure ChangeParaMinus;
Begin
  With Main do
  Begin
    Label25.StyledSettings := Label25.StyledSettings -
      [TStyledSetting.FontColor];
    Label34.StyledSettings := Label34.StyledSettings -
      [TStyledSetting.FontColor];
    Label_Refresh1.StyledSettings := Label_Refresh1.StyledSettings -
      [TStyledSetting.FontColor];
    Label_Refresh2.StyledSettings := Label_Refresh2.StyledSettings -
      [TStyledSetting.FontColor];
    Label_Refresh3.StyledSettings := Label_Refresh3.StyledSettings -
      [TStyledSetting.FontColor];
    Label_Refresh4.StyledSettings := Label_Refresh4.StyledSettings -
      [TStyledSetting.FontColor];
    Label71.StyledSettings := Label71.StyledSettings -
      [TStyledSetting.FontColor];
    Label75.StyledSettings := Label75.StyledSettings -
      [TStyledSetting.FontColor];
    Label73.StyledSettings := Label73.StyledSettings -
      [TStyledSetting.FontColor];
    Label1.StyledSettings := Label1.StyledSettings - [TStyledSetting.FontColor];
    Label4.StyledSettings := Label4.StyledSettings - [TStyledSetting.FontColor];
    Label6.StyledSettings := Label6.StyledSettings - [TStyledSetting.FontColor];
    Label12.StyledSettings := Label12.StyledSettings -
      [TStyledSetting.FontColor];
    Label10.StyledSettings := Label10.StyledSettings -
      [TStyledSetting.FontColor];
    Label49.StyledSettings := Label49.StyledSettings -
      [TStyledSetting.FontColor];
    Label48.StyledSettings := Label48.StyledSettings -
      [TStyledSetting.FontColor];
    Label46.StyledSettings := Label46.StyledSettings -
      [TStyledSetting.FontColor];
    Label223.StyledSettings := Label223.StyledSettings -
      [TStyledSetting.FontColor];
    Label18.StyledSettings := Label18.StyledSettings -
      [TStyledSetting.FontColor];
    Label52.StyledSettings := Label52.StyledSettings -
      [TStyledSetting.FontColor];
    Label65.StyledSettings := Label65.StyledSettings -
      [TStyledSetting.FontColor];
    Label61.StyledSettings := Label61.StyledSettings -
      [TStyledSetting.FontColor];
    Label32.StyledSettings := Label32.StyledSettings -
      [TStyledSetting.FontColor];
    Label30.StyledSettings := Label30.StyledSettings -
      [TStyledSetting.FontColor];
    Label27.StyledSettings := Label27.StyledSettings -
      [TStyledSetting.FontColor];
    Label55.StyledSettings := Label55.StyledSettings -
      [TStyledSetting.FontColor];
    Label54.StyledSettings := Label54.StyledSettings -
      [TStyledSetting.FontColor];
    Label20.StyledSettings := Label20.StyledSettings -
      [TStyledSetting.FontColor];
    Label15.StyledSettings := Label15.StyledSettings -
      [TStyledSetting.FontColor];
    //
    T_Accueil.StyledSettings := T_Accueil.StyledSettings -
      [TStyledSetting.FontColor];
    T_Patient.StyledSettings := T_Patient.StyledSettings -
      [TStyledSetting.FontColor];
    T_RDV.StyledSettings := T_RDV.StyledSettings - [TStyledSetting.FontColor];
    Patient_Recherche.StyledSettings := Patient_Recherche.StyledSettings -
      [TStyledSetting.FontColor];
    New_Patient.StyledSettings := New_Patient.StyledSettings -
      [TStyledSetting.FontColor];
    //
    Edit_Patient.StyledSettings := Edit_Patient.StyledSettings -
      [TStyledSetting.FontColor];
    Nouveau_Patient.StyledSettings := Nouveau_Patient.StyledSettings -
      [TStyledSetting.FontColor];
    Patient.StyledSettings := Patient.StyledSettings -
      [TStyledSetting.FontColor];
    Recherche_Patient.StyledSettings := Recherche_Patient.StyledSettings -
      [TStyledSetting.FontColor];
    P_Accueil.StyledSettings := P_Accueil.StyledSettings -
      [TStyledSetting.FontColor];
    //
    TabItem1.StyledSettings := TabItem1.StyledSettings -
      [TStyledSetting.FontColor];
    TabItem2.StyledSettings := TabItem2.StyledSettings -
      [TStyledSetting.FontColor];
    TabItem3.StyledSettings := TabItem3.StyledSettings -
      [TStyledSetting.FontColor];
    TabItem4.StyledSettings := TabItem4.StyledSettings -
      [TStyledSetting.FontColor];
    TabItem5.StyledSettings := TabItem5.StyledSettings -
      [TStyledSetting.FontColor];
    TabItem8.StyledSettings := TabItem8.StyledSettings -
      [TStyledSetting.FontColor];
    TabItem9.StyledSettings := TabItem9.StyledSettings -
      [TStyledSetting.FontColor];
    TabItem10.StyledSettings := TabItem10.StyledSettings -
      [TStyledSetting.FontColor];
    TabItem11.StyledSettings := TabItem11.StyledSettings -
      [TStyledSetting.FontColor];
    TabItem12.StyledSettings := TabItem12.StyledSettings -
      [TStyledSetting.FontColor];
  End;
End;

procedure ChangeParamPlus;
Begin
  With Main do
  Begin
    Label25.StyledSettings := Label25.StyledSettings +
      [TStyledSetting.FontColor];
    Label34.StyledSettings := Label34.StyledSettings +
      [TStyledSetting.FontColor];
    Label_Refresh1.StyledSettings := Label_Refresh1.StyledSettings +
      [TStyledSetting.FontColor];
    Label_Refresh2.StyledSettings := Label_Refresh2.StyledSettings +
      [TStyledSetting.FontColor];
    Label_Refresh3.StyledSettings := Label_Refresh3.StyledSettings +
      [TStyledSetting.FontColor];
    Label_Refresh4.StyledSettings := Label_Refresh4.StyledSettings +
      [TStyledSetting.FontColor];
    Label71.StyledSettings := Label71.StyledSettings +
      [TStyledSetting.FontColor];
    Label75.StyledSettings := Label75.StyledSettings +
      [TStyledSetting.FontColor];
    Label73.StyledSettings := Label73.StyledSettings +
      [TStyledSetting.FontColor];
    Label1.StyledSettings := Label1.StyledSettings + [TStyledSetting.FontColor];
    Label4.StyledSettings := Label4.StyledSettings + [TStyledSetting.FontColor];
    Label6.StyledSettings := Label6.StyledSettings + [TStyledSetting.FontColor];
    Label12.StyledSettings := Label12.StyledSettings +
      [TStyledSetting.FontColor];
    Label10.StyledSettings := Label10.StyledSettings +
      [TStyledSetting.FontColor];
    Label49.StyledSettings := Label49.StyledSettings +
      [TStyledSetting.FontColor];
    Label48.StyledSettings := Label48.StyledSettings +
      [TStyledSetting.FontColor];
    Label46.StyledSettings := Label46.StyledSettings +
      [TStyledSetting.FontColor];
    Label223.StyledSettings := Label223.StyledSettings +
      [TStyledSetting.FontColor];
    Label18.StyledSettings := Label18.StyledSettings +
      [TStyledSetting.FontColor];
    Label52.StyledSettings := Label52.StyledSettings +
      [TStyledSetting.FontColor];
    Label65.StyledSettings := Label65.StyledSettings +
      [TStyledSetting.FontColor];
    Label61.StyledSettings := Label61.StyledSettings +
      [TStyledSetting.FontColor];
    Label32.StyledSettings := Label32.StyledSettings +
      [TStyledSetting.FontColor];
    Label30.StyledSettings := Label30.StyledSettings +
      [TStyledSetting.FontColor];
    Label27.StyledSettings := Label27.StyledSettings +
      [TStyledSetting.FontColor];
    Label55.StyledSettings := Label55.StyledSettings +
      [TStyledSetting.FontColor];
    Label54.StyledSettings := Label54.StyledSettings +
      [TStyledSetting.FontColor];
    Label20.StyledSettings := Label20.StyledSettings +
      [TStyledSetting.FontColor];
    Label15.StyledSettings := Label15.StyledSettings +
      [TStyledSetting.FontColor];
    //
    T_Accueil.StyledSettings := T_Accueil.StyledSettings +
      [TStyledSetting.FontColor];
    T_Patient.StyledSettings := T_Patient.StyledSettings +
      [TStyledSetting.FontColor];
    T_RDV.StyledSettings := T_RDV.StyledSettings + [TStyledSetting.FontColor];
    Patient_Recherche.StyledSettings := Patient_Recherche.StyledSettings +
      [TStyledSetting.FontColor];
    New_Patient.StyledSettings := New_Patient.StyledSettings +
      [TStyledSetting.FontColor];
    //
    Edit_Patient.StyledSettings := Edit_Patient.StyledSettings +
      [TStyledSetting.FontColor];
    Nouveau_Patient.StyledSettings := Nouveau_Patient.StyledSettings +
      [TStyledSetting.FontColor];
    Patient.StyledSettings := Patient.StyledSettings +
      [TStyledSetting.FontColor];
    Recherche_Patient.StyledSettings := Recherche_Patient.StyledSettings +
      [TStyledSetting.FontColor];
    P_Accueil.StyledSettings := P_Accueil.StyledSettings +
      [TStyledSetting.FontColor];
    //
    TabItem1.StyledSettings := TabItem1.StyledSettings +
      [TStyledSetting.FontColor];
    TabItem2.StyledSettings := TabItem2.StyledSettings +
      [TStyledSetting.FontColor];
    TabItem3.StyledSettings := TabItem3.StyledSettings +
      [TStyledSetting.FontColor];
    TabItem4.StyledSettings := TabItem4.StyledSettings +
      [TStyledSetting.FontColor];
    TabItem5.StyledSettings := TabItem5.StyledSettings +
      [TStyledSetting.FontColor];
    TabItem8.StyledSettings := TabItem8.StyledSettings +
      [TStyledSetting.FontColor];
    TabItem9.StyledSettings := TabItem9.StyledSettings +
      [TStyledSetting.FontColor];
    TabItem10.StyledSettings := TabItem10.StyledSettings +
      [TStyledSetting.FontColor];
    TabItem11.StyledSettings := TabItem11.StyledSettings +
      [TStyledSetting.FontColor];
    TabItem12.StyledSettings := TabItem12.StyledSettings +
      [TStyledSetting.FontColor];
  End;
end;

procedure ChangeParamP(const Dlg: TParametre);
Begin
  With Dlg do
  Begin
    //
    Generale.StyledSettings := Generale.StyledSettings +
      [TStyledSetting.FontColor];
    TreeViewItem1.StyledSettings := TreeViewItem1.StyledSettings +
      [TStyledSetting.FontColor];
    TreeViewItem3.StyledSettings := TreeViewItem3.StyledSettings +
      [TStyledSetting.FontColor];
    //
    Tree_Sub_CompteMod.StyledSettings := Tree_Sub_CompteMod.StyledSettings +
      [TStyledSetting.FontColor];
    Tree_Sub_CompteRem.StyledSettings := Tree_Sub_CompteRem.StyledSettings +
      [TStyledSetting.FontColor];
    Tree_Sub_Pref.StyledSettings := Tree_Sub_Pref.StyledSettings +
      [TStyledSetting.FontColor];
    Tree_Sub_Patient.StyledSettings := Tree_Sub_Patient.StyledSettings +
      [TStyledSetting.FontColor];
    Tree_Sub_PAccueil.StyledSettings := Tree_Sub_PAccueil.StyledSettings +
      [TStyledSetting.FontColor];
    Tree_Sub_CompteDel.StyledSettings := Tree_Sub_CompteDel.StyledSettings +
      [TStyledSetting.FontColor];
  End;
End;

procedure ChangeParamM(const Dlg: TParametre);
Begin
  With Dlg do
  Begin
    //
    Generale.StyledSettings := Generale.StyledSettings -
      [TStyledSetting.FontColor];
    TreeViewItem1.StyledSettings := TreeViewItem1.StyledSettings -
      [TStyledSetting.FontColor];
    TreeViewItem3.StyledSettings := TreeViewItem3.StyledSettings -
      [TStyledSetting.FontColor];
    //
    Tree_Sub_CompteMod.StyledSettings := Tree_Sub_CompteMod.StyledSettings -
      [TStyledSetting.FontColor];
    Tree_Sub_CompteRem.StyledSettings := Tree_Sub_CompteRem.StyledSettings -
      [TStyledSetting.FontColor];
    Tree_Sub_Pref.StyledSettings := Tree_Sub_Pref.StyledSettings -
      [TStyledSetting.FontColor];
    Tree_Sub_Patient.StyledSettings := Tree_Sub_Patient.StyledSettings -
      [TStyledSetting.FontColor];
    Tree_Sub_PAccueil.StyledSettings := Tree_Sub_PAccueil.StyledSettings -
      [TStyledSetting.FontColor];
    Tree_Sub_CompteDel.StyledSettings := Tree_Sub_CompteDel.StyledSettings -
      [TStyledSetting.FontColor];
  End;
End;

function LoadTheme(const Dlg: TForm): Integer;
Var
  Theme: Integer;
Begin
  With Main do
  Begin
    With DataModule1.FDQuery1 do
    Begin
      Active := False;
      SQl.Clear;
      SQl.Text := ('Select * From Parametre Where ID="' + ID_Medecin + '"');
      Active := True;
      Open;
      Theme := FieldByName('Theme').AsInteger;
      Close;
      Active := False;
      SQl.Clear;
    End;
    if (Theme = 0) then
    Begin
      Dlg.StyleBook := Windows10;
    End
    else if (Theme = 1) then
    Begin
      Dlg.StyleBook := Windows10SlateGrey;
    End;
    Result := Theme;
  End;
End;

procedure TMain.LoadParam();
Var
  Bar1, Bar2, Bar3, Bar4, Theme: Integer;
  HM, HS, Bio, Serlg: Boolean;
  Lang: String;
Begin
  With Main Do
  Begin
    With DataModule1.FDQuery1 do
    Begin
      Active := False;
      SQl.Clear;
      SQl.Text := ('Select * From Parametre Where Id="' + ID_Medecin + '"');
      Open;
      Bar1 := FieldByName('Bar1').AsInteger;
      Bar2 := FieldByName('Bar2').AsInteger;
      Bar3 := FieldByName('Bar3').AsInteger;
      Bar4 := FieldByName('Bar4').AsInteger;
      Theme := FieldByName('Theme').AsInteger;
      HM := FieldByName('HM').AsBoolean;
      HS := FieldByName('HS').AsBoolean;
      Bio := FieldByName('Bio').AsBoolean;
      Serlg := FieldByName('Serlg').AsBoolean;
      Lang := FieldByName('Lang').AsString;
      Close;
      SQl.Clear;
    End;
    // Setting the Tables
    Begin
      GrouBox1_Table.Text :=
        ('Les ' + Bar1.ToString + ' derni�res homme ajouter');
      GrouBox2_Table.Text := ('Les ' + Bar2.ToString + ' derni�res groupage');
      GrouBox3_Table.Text :=
        ('Les ' + Bar3.ToString + ' derni�res femmes ajouter');
      GrouBox4_Table.Text :=
        ('Les ' + Bar4.ToString + ' derni�res patient ajouter');
      // System
      Begin
        if (Theme = 0) then
        Begin
          StyleBook := Windows10;
          ChangeParaMinus;
          Rectangle1.Visible := True;
          Rectangle2.Visible := False;
        End
        else if (Theme = 1) then
        Begin
          StyleBook := Windows10SlateGrey;
          ChangeParamPlus;
          Rectangle2.Visible := True;
          Rectangle1.Visible := False;
        End;
      End;
      // StringGrids
      Begin
        StringGrid1.RowCount := Bar1;
        StringGrid2.RowCount := Bar2;
        StringGrid3.RowCount := Bar3;
        StringGrid4.RowCount := Bar4;
        Load(Bar1, Bar2, Bar3, Bar4);
      End;
    End;
    // Setting The Tabs Visibility
    Begin
      TabItem2.Visible := HM;
      TabItem3.Visible := HS;
      TabItem4.Visible := Bio;
      TabItem5.Visible := Serlg;
      TabItem9.Visible := HM;
      TabItem10.Visible := HS;
      TabItem11.Visible := Bio;
      TabItem12.Visible := Serlg;
    End;
  End;
End;

procedure TMain.MainTDblClick(Sender: TObject);
begin
  inherited;
  Patient_ID := '';
end;

procedure LoadParam2(const Dlg: TParametre);
Var
  Bar1, Bar2, Bar3, Bar4, Theme: Integer;
  HM, HS, Bio, Serlg: Boolean;
  Lang: String;
Begin
  With Dlg Do
  Begin
    With DataModule1.FDQuery1 do
    Begin
      Active := False;
      SQl.Clear;
      SQl.Text := ('Select * From Parametre Where Id="' +
        Main.ID_Medecin + '"');
      Open;
      Bar1 := FieldByName('Bar1').AsInteger;
      Bar2 := FieldByName('Bar2').AsInteger;
      Bar3 := FieldByName('Bar3').AsInteger;
      Bar4 := FieldByName('Bar4').AsInteger;
      Theme := FieldByName('Theme').AsInteger;
      HM := FieldByName('HM').AsBoolean;
      HS := FieldByName('HS').AsBoolean;
      Bio := FieldByName('Bio').AsBoolean;
      Serlg := FieldByName('Serlg').AsBoolean;
      Lang := FieldByName('Lang').AsString;
      Close;
      SQl.Clear;
    End;
    // System
    Begin
      ComboBox1.ItemIndex := Theme;
    End;
    // Visibility
    Begin
      if (HM = True) then
        Switch1.IsChecked := True;
      if (HS = True) then
        Switch2.IsChecked := True;
      if (Bio = True) then
        Switch3.IsChecked := True;
      if (Serlg = True) then
        Switch4.IsChecked := True;
    End;
    // Bars & Edit's
    Begin
      // Edit
      Edit_ST_1.Text := Bar1.ToString;
      Edit_ST_2.Text := Bar2.ToString;
      Edit_ST_3.Text := Bar3.ToString;
      Edit_ST_4.Text := Bar4.ToString;
      // Bars
      TrackBar1.Value := Bar1.ToSingle;
      TrackBar2.Value := Bar2.ToSingle;
      TrackBar3.Value := Bar3.ToSingle;
      TrackBar4.Value := Bar4.ToSingle;
    End;
  End;
End;

procedure StatusBar;
Begin
  With Main Do
  Begin
    With DataModule1.FDQ_Status_Patient do
    Begin
      Active := False;
      SQl.Clear;
      SQl.Text := 'Select count(*) From Patient';
      Active := True;
      Open;
      Status_Edit1.Text := IntToStr(Fields[0].AsInteger);
      Active := False;
      SQl.Clear;
      SQl.Text := 'Select Count(*) From Patient Where Type="Externe"';
      Active := True;
      Open;
      Status_Edit2.Text := IntToStr(Fields[0].AsInteger);
      Active := False;
      SQl.Clear;
      SQl.Text := 'Select Count(*) From Patient Where type="Interne"';
      Active := True;
      Open;
      Status_Edit3.Text := IntToStr(Fields[0].AsInteger);
      Active := False;
      SQl.Clear;
    End;
  End;
End;

procedure TMain.SaveDialog1TypeChange(Sender: TObject);
begin
  inherited;
  case SaveDialog1.FilterIndex of
    1:
      SaveDialog1.DefaultExt := '.BAK';
    2:
      SaveDialog1.DefaultExt := '.db';
  end;
end;

procedure TMain.StringGrid5CellClick(const Column: TColumn; const Row: Integer);
Var
  tRow: Integer;
begin
  inherited;
  Patient_ID := '';
  tRow := StringGrid5.Row;
  Patient_ID := StringGrid5.Cells[0, tRow];
end;

procedure TMain.StringGrid5CellDblClick(const Column: TColumn;
  const Row: Integer);
begin
  inherited;
  inherited;
  Label65Click(Self);
end;

procedure StringGrid6ColResize();
Var
  i: Integer;
Begin
  With Main do
  Begin
    for i := 0 to 15 do
    Begin
      StringGrid6.Columns[i].Width := 120;
      if (i = 0) then
        StringGrid6.Columns[i].Width := 80;
      if (i = 5) then
        StringGrid6.Columns[i].Width := 70;
      if (i = 6) then
        StringGrid6.Columns[i].Width := 70;
    End;
  End;
End;

procedure TMain.StringGrid6CellClick(const Column: TColumn; const Row: Integer);
Var
  tRow: Integer;
begin
  inherited;
  Patient_ID := '';
  tRow := StringGrid6.Row;
  Patient_ID := StringGrid6.Cells[0, tRow];
end;

procedure TMain.StringGrid6CellDblClick(const Column: TColumn;
  const Row: Integer);
begin
  inherited;
  Label48Click(Self);
end;

procedure Resources();
Var
  ResStream: TResourceStream;
  AppData: String;
Begin
  AppData := GetEnvironmentVariable('AppData');
  CreateDir(AppData + '\SangyMed');
  AppData := AppData + '\SangyMed\Alg_info.db';
  ResStream := TResourceStream.Create(HInstance, 'Alg_Res', 'db');
  try
    ResStream.Position := 0;
    ResStream.SaveToFile(AppData);
  finally
    ResStream.Free;
  end;
End;

Procedure Recherche(Recherche, filtre, typ, wilaya, commune, groupage: String);
Var
  typs, wila, comn, Grp: String;
Begin
  With DataModule1.FDQ_Recherche do
  Begin
    if (Main.Privilege = False) then
      SQl.Text :=
        ('Select Patient_ID, Nom,Prenom,Type,Wilaya,Commune,Groupage,Date_de_Nai,Date_de_Entre,Sexe,Etat_Civil,Adresse,Mobile,Email,Telephone,Fax From patient Where ID="'
        + Main.ID_Medecin + '";')
    else
      SQl.Text :=
        ('Select Patient_ID, Nom,Prenom,Type,Wilaya,Commune,Groupage,Date_de_Nai,Date_de_Entre,Sexe,Etat_Civil,Adresse,Mobile,Email,Telephone,Fax From patient;');
    // Where type="' + typ + '";');
    { if (Recherche = '') then
      Filtered := False
      else }
    Begin
      if (typ = '') then
        typs := ''
      else
        typs := (' And (Type LIKE ''%' + typ + '%'')');
      if (wilaya = '') then
        wila := ''
      else
        wila := (' And (Wilaya LIKE ''%' + wilaya + '%'')');
      if (commune = '') then
        comn := ''
      else
        comn := (' And (Commune LIKE ''%' + commune + '%'')');
      if (groupage = '') then
        Grp := ''
      else
        Grp := (' And (Groupage LIKE ''%' + groupage + '%'')');
      //
      Filter := ('(' + filtre + ' LIKE ''%' + Recherche + '%'')') + typs + wila
        + comn + Grp;
      Filtered := True;
    End;
  End;
End;

procedure TMain.Edit_RechercheChangeTracking(Sender: TObject);
Var
  Filter, typ: String;
begin
  inherited;
  // Searh By
  if (RB_Nom.IsChecked = True) then
    Filter := ('Nom')
  else if (RB_Prenom.IsChecked = True) then
    Filter := ('Prenom');
  // Show By
  if (RB_Interne.IsChecked = True) then
    typ := ('Interne')
  else if (RB_Externe.IsChecked = True) then
    typ := ('Externe');
  if ((RB_Interne.IsChecked = False) and (RB_Externe.IsChecked = False) and
    (Edit_Search_Wilaya.Text = '') and (Edit2.Text = '') and
    (Edit_Search_Commune.Text = '') and (Edit_Recherche.Text = '')) then
    DataModule1.FDQ_Recherche.Active := False
  else
  Begin
    Recherche(Edit_Recherche.Text, Filter, typ, Edit_Search_Wilaya.Text,
      Edit_Search_Commune.Text, Edit2.Text);
    DataModule1.FDQ_Recherche.Active := True;
    StringGrid6ColResize;
  End;
  if (Edit_Recherche.Text = '') then
  Begin
    Patient_ID := '';
  End;
end;

procedure TMain.Edit2ChangeTracking(Sender: TObject);
begin
  inherited;
  Edit_Recherche.OnChangeTracking(Self);
end;

procedure TMain.Edit_PatientResize(Sender: TObject);
begin
  inherited;
  Frame_EP_Principale.OnResize(Frame_EP_Principale);
  Frame_EP_Information.OnResize(Frame_EP_Information);
  Frame_EP_Hemogramme.OnResize(Frame_EP_Hemogramme);
  Frame_EP_Hemostase.OnResize(Frame_EP_Hemostase);
  Frame_EP_Biochimic.OnResize(Frame_EP_Biochimic);
  Frame_EP_Serologie.OnResize(Frame_EP_Serologie);
  // Frame_EP_Ordonnance.OnResize(Frame_EP_Ordonnance);
end;

procedure TMain.Edit_Search_CommuneChangeTracking(Sender: TObject);
begin
  inherited;
  Edit_Recherche.OnChangeTracking(Self);
end;

procedure TMain.Edit_Search_WilayaChangeTracking(Sender: TObject);
begin
  inherited;
  Edit_Recherche.OnChangeTracking(Self);
end;

procedure TMain.FloatAnimation1Finish(Sender: TObject);
begin
  inherited;
  DataModule1.FDQ_Homme.Active := False;
  DataModule1.FDQ_Homme.Active := True;
  StringGrid5ColResize;
end;

procedure TMain.FloatAnimation2Finish(Sender: TObject);
begin
  inherited;
  DataModule1.FDQ_Groupage.Active := False;
  DataModule1.FDQ_Groupage.Active := True;
  StringGrid5ColResize;
end;

procedure TMain.FloatAnimation3Finish(Sender: TObject);
begin
  inherited;
  DataModule1.FDQ_Femme.Active := False;
  DataModule1.FDQ_Femme.Active := True;
  StringGrid5ColResize;
end;

procedure TMain.FloatAnimation4Finish(Sender: TObject);
begin
  inherited;
  DataModule1.FDQ_Patient.Active := False;
  DataModule1.FDQ_Patient.Active := True;
  StringGrid5ColResize;
end;

procedure TMain.FloatAnimation5Finish(Sender: TObject);
begin
  inherited;
  DataModule1.FDQ_Patient_Table.Active := False;
  DataModule1.FDQ_Patient_Table.Active := True;
  StringGrid5ColResize;
  StatusBar;
end;

procedure TMain.FormClose(Sender: TObject; var Action: TCloseAction);
Var
  Pass: String;
begin
  inherited;
  with DataModule1 do
  Begin
    Pass := GenerateID;
    Pass := Encryt(Pass);
    Database_Encrypt(Pass);
  End;
end;

procedure TMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
  Msg: Integer;
begin
  inherited;
  Msg := MessageDlg('Vous etez sure !', TMsgDlgType.mtConfirmation,
    [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], 0);
  if (Msg = mrNo) then
    CanClose := False;
end;

procedure TMain.FormCreate(Sender: TObject);
Var
  AppData: String;
  Num: Integer;
begin
  AppData := GetEnvironmentVariable('AppData');
  AppData := AppData + '\SangyMed\Alg_info.db';
  if (FileExists(AppData) = False) then
  Begin
    Resources();
  End;
  inherited;
  WidthX := 1280;
  HeightX := 688;
end;

procedure TMain.FormPaint(Sender: TObject; Canvas: TCanvas;
  const ARect: TRectF);
begin
  inherited;
  WidthX := Main.Width;
  HeightX := Main.Height;
  StringGrid5ColResize;
end;

procedure TMain.FormResize(Sender: TObject);
begin
  inherited;
  // Frame resize

  Layout10.Width := (GroupBox4.Width) / 3;
  Layout11.Width := (GroupBox4.Width) / 3;
  Layout12.Width := (GroupBox4.Width) / 3;

  Nouveau_Patient.OnResize(Nouveau_Patient);
  Edit_Patient.OnResize(Edit_Patient);
  //
  P_Accueil.OnResize(P_Accueil);
  // Minmum Size for MainForm -- U_Main.pas --
  if ((Main.Width <= Screen.Width) or (Main.Height <= Screen.Height)) then
  begin
    // Setting Main form Sizes
    if (Main.Width <= ((Screen.Width div 2) + (Screen.Width div 4))) then
    begin
      Main.Width := ((Screen.Width div 2) + (Screen.Width div 4));
      Mouse_Event(MOUSEEVENTF_ABSOLUTE or MOUSEEVENTF_LEFTUP, 0, 0, 0, 0);
    end;
    if (Main.Height <= (Screen.Height div 2) + (Screen.Height div 4)) then
    begin
      Main.Height := ((Screen.Height div 2) + (Screen.Height div 4));
      Mouse_Event(MOUSEEVENTF_ABSOLUTE or MOUSEEVENTF_LEFTUP, 0, 0, 0, 0);
    end;
  end;
end;

procedure TMain.FormShow(Sender: TObject);
var
  LogDlg: TConnecter;
begin
  inherited;
  P_Accueil.IsSelected := True;
  H_Accueil.IsSelected := True;
  LogDlg := TConnecter.Create(Self);
  if (LogDlg.ShowModal = mrOk) then
  Begin
    LogDlg.Free;
    ShowMessage('Bienvenue Mr(s) "' + Nom + '"');
    // Load();
    LoadParam;
  End
  else
    Application.Terminate;
  // StatusBar;
end;

procedure TMain.Frame_EP_PrincipaleButton1Click(Sender: TObject);
Var
  ID: String;
begin
  inherited;
  if (Frame_EP_Principale.SetEdit = True) then
  Begin
    With DataModule1.FDQuery1 do
    Begin
      Active := False;
      SQl.Clear;
      SQl.Text := 'Select * From Patient Where Patient_ID="' +
        Patient_ID + '";';
      Active := True;
      Edit;
      ID := Frame_EP_Principale.Edit;
      Frame_EP_Principale.Edit;
      Frame_EP_Information.Edit;
      Post;
      Active := False;
      SQl.Clear;
    End;
    Frame_EP_Biochimic.Edit(ID);
    Frame_EP_Hemogramme.Edit(ID);
    Frame_EP_Hemostase.Edit(ID);
    Frame_EP_Serologie.Edit(ID);
    Frame_EP_PrincipaleButton3Click(Self);
  End;
end;

procedure TMain.Frame_EP_PrincipaleButton2Click(Sender: TObject);
begin
  inherited;
  Frame_Principale.Clear();
  if (TabItem8.IsSelected = True) then
    Frame_EP_Information.Clear;
  if (TabItem9.IsSelected = True) then
    Frame_EP_Hemogramme.Clear;
  if (TabItem10.IsSelected = True) then
    Frame_EP_Hemostase.Clear;
  if (TabItem11.IsSelected = True) then
    Frame_EP_Biochimic.Clear;
  if (TabItem12.IsSelected = True) then
    Frame_EP_Serologie.Clear;
end;

procedure TMain.Frame_EP_PrincipaleButton3Click(Sender: TObject);
begin
  inherited;
  Edit_Patient.Visible := False;
  Patient.IsSelected := True;
  H_Gen_Patient.IsSelected := True;
end;

procedure TMain.Frame_PrincipaleButton1Click(Sender: TObject);
Var
  ID: String;
begin
  inherited;
  if (Frame_Principale.SetEdit = True) then
  Begin
    with DataModule1.FDQuery1 do
    Begin
      Active := False;
      SQl.Clear;
      SQl.Text := ('Select * From Patient');
      Active := True;
      Insert;
      FieldByName('ID').AsString := ID_Medecin;
      ID := Frame_Principale.Insert;
      Frame_Information.Insert;
      Post;
      SQl.Clear;
      Active := False;
    End;
    if (Frame_Hemogramme.Pret = True) then
      Frame_Hemogramme.Insert(ID);
    if (Frame_Hemostase.Pret = True) then
      Frame_Hemostase.Insert(ID);
    if (Frame_Serologie.Pret = True) then
      Frame_Serologie.Insert(ID);
    if (Frame_Biochimic.Pret = True) then
      Frame_Biochimic.Insert(ID);
    Frame_PrincipaleButton2Click(Self);
  end;
end;

procedure TMain.Frame_PrincipaleButton2Click(Sender: TObject);
begin
  inherited;
  Frame_Information.Clear;
  Frame_Principale.Clear;
  Frame_Hemogramme.Clear;
  Frame_Hemostase.Clear;
  Frame_Biochimic.Clear;
  Frame_Serologie.Clear;
end;

procedure TMain.Label10Click(Sender: TObject);
Var
  PropreDlg: TPropre;
  i: Integer;
begin
  inherited;
  PropreDlg := TPropre.Create(Self);
  i := LoadTheme(PropreDlg);
  if (i = 0) then
  Begin
    PropreDlg.Rectangle1.Visible := True;
    PropreDlg.Rectangle2.Visible := False;
  End
  else if (i = 1) then
  begin
    PropreDlg.Rectangle2.Visible := True;
    PropreDlg.Rectangle1.Visible := False;
  end;
  if (PropreDlg.ShowModal = mrCancel) then
    PropreDlg.Free;
end;

procedure TMain.Label12Click(Sender: TObject);
var
  EtablissementDlg: TEtablissement;
  i: Integer;
begin
  inherited;
  EtablissementDlg := TEtablissement.Create(Self);
  i := LoadTheme(EtablissementDlg);
  if (i = 0) then
  Begin
    EtablissementDlg.Rectangle1.Visible := True;
    EtablissementDlg.Rectangle2.Visible := False;
  End
  else if (i = 1) then
  Begin
    EtablissementDlg.Rectangle2.Visible := True;
    EtablissementDlg.Rectangle1.Visible := False;
  End;
  if (EtablissementDlg.ShowModal = mrClose) then
    EtablissementDlg.Free;
end;

procedure TMain.Label15Click(Sender: TObject);
begin
  inherited;
  Patient.Visible := False;
  H_Gen_Patient.Visible := False;
  H_Accueil.IsSelected := True;
  H_Accueil.IsSelected := True;
end;

procedure TMain.Label18Click(Sender: TObject);
begin
  inherited;
  Recherche_Patient.Visible := False;
  H_Gen_RechercheP.Visible := False;
  H_Accueil.IsSelected := True;
  H_Accueil.IsSelected := True;
end;

procedure TMain.Label1Click(Sender: TObject);
begin
  inherited;
  H_Accueil.Visible := True;
  H_Accueil.IsSelected := True;
  P_Accueil.Visible := True;
  P_Accueil.IsSelected := True;
  Patient.Visible := False;
  Nouveau_Patient.Visible := False;
  Recherche_Patient.Visible := False;
  H_Gen_Patient.Visible := False;
  H_Gen_NouveauP.Visible := False;
  H_Gen_RechercheP.Visible := False;
end;

procedure TMain.Label20Click(Sender: TObject);
begin
  inherited;
  Nouveau_Patient.Visible := False;
  H_Gen_NouveauP.Visible := False;
  H_Accueil.IsSelected := True;
  H_Accueil.IsSelected := True;
end;

procedure TMain.Label223Click(Sender: TObject);
begin
  inherited;
  // H_Accueil.IsSelected := True;
  Edit_Recherche.Text := '';
  Edit2.Text := '';
  Edit_Search_Commune.Text := '';
  Edit_Search_Wilaya.Text := '';
  RB_Interne.IsChecked := False;
  RB_Externe.IsChecked := False;
  DataModule1.FDQ_Recherche.Active := False;
end;

procedure TMain.Label25Click(Sender: TObject);
Var
  Str, Date0: String;
  Date1: TDateTime;
  Days: double;
begin
  inherited;
  if (Patient_ID <> '') then
  Begin
    With DataModule1.FDQuery1 do
    Begin
      Active := False;
      SQl.Clear;
      SQl.Text := ('Select Date_Donner_Sang from Patient Where Patient_ID="' +
        Patient_ID + '";');
      Active := True;
      Open;
      Date0 := FieldByName('Date_Donner_Sang').AsString;
      Close;
      Active := False;
      SQl.Clear;
      if (Date0 = '') then
      Begin
        MessageDlg('Ce patient n''a pas donn� de sang', TMsgDlgType.mtWarning,
          [TMsgDlgBtn.mbOK], 0);
      End
      else
      begin
        Date1 := VarToDateTime(Date0);
        Days := Date - Date1;
        if (Days = 30) then
          Str := ('1 mois � �t� pass�')
        else if (Days = 60) then
          Str := ('2 mois � �t� pass�')
        else if (Days = 90) then
          Str := ('3 mois � �t� pass�')
        else
          Str := (Days.ToString + ' jours � �t� pass�');
        MessageDlg(Str, TMsgDlgType.mtInformation, [TMsgDlgBtn.mbOK], 0);
      end;
    End;
  End
  else
  Begin
    ShowMessage
      ('Sil vous plait choisir une patient ou double clicker sur un patient pour le modifier');
  End;
end;

procedure TMain.Label27Click(Sender: TObject);
Var
  P: TPointF;
begin
  inherited;
  P.X := (((Label27.Width) / 2) * (-1));
  P.Y := Label27.Height;
  P := Label27.LocalToAbsolute(P);
  P := ClientToScreen(P);
  PopupMenu2.Popup(P.X, P.Y);
end;

procedure TMain.Label_Refresh1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
  inherited;
  FloatAnimation1.enabled := False;
end;

procedure TMain.Label_Refresh1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
  inherited;
  FloatAnimation1.enabled := True;
end;

procedure TMain.Label_Refresh2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
  inherited;
  FloatAnimation2.enabled := False;
end;

procedure TMain.Label_Refresh2MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
  inherited;
  FloatAnimation2.enabled := True;
end;

procedure TMain.Label_Refresh3MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
  inherited;
  FloatAnimation3.enabled := False;
end;

procedure TMain.Label_Refresh3MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
  inherited;
  FloatAnimation3.enabled := True;
end;

procedure TMain.Label_Refresh4MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
  inherited;
  FloatAnimation4.enabled := False;
end;

procedure TMain.Label_Refresh4MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Single);
begin
  inherited;
  FloatAnimation4.enabled := True;
end;

procedure TMain.Label30Click(Sender: TObject);
begin
  inherited;
  Patient_RechercheClick(Self);
end;

procedure TMain.Label32Click(Sender: TObject);
Var
  P: TPointF;
begin
  inherited;
  P.X := (((Label32.Width) / 2) * (-1));
  P.Y := Label32.Height;
  P := Label32.LocalToAbsolute(P);
  P := ClientToScreen(P);
  PopupMenu1.Popup(P.X, P.Y);
end;

procedure TMain.Label34Click(Sender: TObject);
begin
  inherited;
  Label25Click(Self);
end;

procedure TMain.Label46Click(Sender: TObject);
begin
  inherited;
  Label61.OnClick(Self);
end;

procedure TMain.Label48Click(Sender: TObject);
begin
  inherited;
  Edit_Patient.Visible := True;
  Edit_Patient.IsSelected := True;
  H_Accueil.IsSelected := True;
  Frame_EP_Principale.OnDataLoad;
  Frame_EP_Information.OnDataLoad;
end;

procedure TMain.Label49Click(Sender: TObject);
begin
  inherited;
  Label76.OnClick(Self);
end;

procedure TMain.Label4Click(Sender: TObject);
Var
  FenetreDlg: TFenetre;
  i: Integer;
begin
  inherited;
  FenetreDlg := TFenetre.Create(Self);
  i := LoadTheme(FenetreDlg);
  if (i = 0) then
  Begin
    FenetreDlg.Rectangle1.Visible := True;
    FenetreDlg.Rectangle2.Visible := False;
    LoadFM(FenetreDlg);
  End
  else if (i = 1) then
  Begin
    FenetreDlg.Rectangle2.Visible := True;
    FenetreDlg.Rectangle1.Visible := False;
    LoadFP(FenetreDlg);
  End;

  if (FenetreDlg.ShowModal = mrClose) then
    FenetreDlg.Free;
end;

procedure TMain.Label52Click(Sender: TObject);
begin
  inherited;
  New_PatientClick(Self);
end;

procedure TMain.Label54Click(Sender: TObject);
begin
  inherited;
  Frame_PrincipaleButton2Click(Self);
end;

procedure TMain.Label55Click(Sender: TObject);
begin
  inherited;
  Frame_PrincipaleButton1Click(Self);
end;

procedure TMain.Label61Click(Sender: TObject);
begin
  inherited;
  if (Patient_ID <> '') then
  Begin
    With DataModule1.FDCmnd_Drop_Patient do
    Begin
      Active := False;
      CommandText.Clear;
      CommandText.Text := ('DELETE FROM Patient WHERE Patient_ID="' +
        Patient_ID + '";');
      Active := True;
      Execute;
      Active := False;
      CommandText.Clear;
      FloatAnimation5.OnFinish(FloatAnimation5);
      Patient_ID := '';
    End;
  End
  else
  Begin
    ShowMessage
      ('Sil vous plait choisir une patient ou double clicker sur un patient pour le modifier');
  End;
end;

procedure TMain.Label65Click(Sender: TObject);
begin
  inherited;
  if (Patient_ID <> '') then
  Begin
    Edit_Patient.Visible := True;
    Edit_Patient.IsSelected := True;
    H_Accueil.IsSelected := True;
    TabItem8.IsSelected := True;
    Frame_EP_Principale.OnDataLoad;
    Frame_EP_Information.OnDataLoad;
    Frame_EP_Hemogramme.OnDataLoad;
    Frame_EP_Hemostase.OnDataLoad;
    Frame_EP_Serologie.OnDataLoad;
    Frame_EP_Biochimic.OnDataLoad;
    Main.OnResize(Self);
  End
  else
  Begin
    ShowMessage
      ('Sil vous plait choisir une patient ou double clicker sur un patient pour le modifier');
  End;
end;

procedure TMain.Label6Click(Sender: TObject);
var
  OptionDlg: TParametre;
  Theme, Result: Integer;
begin
  inherited;
  OptionDlg := TParametre.Create(Self);
  LoadParam2(OptionDlg);
  Theme := LoadTheme(OptionDlg);
  if (Theme = 0) then
  Begin
    ChangeParamM(OptionDlg);
    OptionDlg.Rectangle1.Visible := True;
    OptionDlg.Rectangle2.Visible := False;
  End
  else if (Theme = 1) then
  Begin
    ChangeParamP(OptionDlg);
    OptionDlg.Rectangle2.Visible := True;
    OptionDlg.Rectangle1.Visible := False;
  End;
  if (OptionDlg.ShowModal = mrOk) then
  Begin
    OptionDlg.Free;
    Pass := True;
    T_RDV.OnClick(T_RDV);
  End;
end;

procedure TMain.Label71Click(Sender: TObject);
Var
  output, Path, DirPath, Ext: String;
  Encrypt: Boolean;
  Msg: Integer;
begin
  inherited;
  output := '';
  Path := '';
  DirPath := '';
  if (SaveDialog1.Execute) then
  Begin
    Msg := MessageDlg('Voulez-vous crypter la base de donn�es! ' + sLineBreak +
      '' + sLineBreak +
      'Le cryptage des donn�es signifie que la base de donn�es ne sera ouverte qu''� partir de cette Application.',
      TMsgDlgType.mtConfirmation, [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], 0);
    if (Msg = mrYes) then
      Encrypt := True
    else
      Encrypt := False;
    With DataModule1 do
    Begin
      SaveDialog1.DefaultExt := '';
      output := SaveDialog1.FileName;
      DirPath := GetEnvironmentVariable('AppData');
      Path := (DirPath + '\SangyMed\Data.db');
      FDConnection3.Params.Add('Database=' + Path);
      FDConnection3.Open();
      FDSQLiteBackup1.DriverLink := FDPhysSQLiteDriverLink1;
      FDSQLiteBackup1.DatabaseObj := FDConnection3.CliObj;
      SaveDialog1.OnTypeChange(Self);
      FDSQLiteBackup1.DestDatabase := output;
      try
        FDSQLiteBackup1.Backup;
      except
        on E: Exception do
        BEgin
          FDSQLiteSecurity1.DriverLink := FDPhysSQLiteDriverLink1;
          FDSQLiteSecurity1.database := output;
          FDSQLiteSecurity1.Password := 'Painkiller';
          FDSQLiteSecurity1.RemovePassword;
          FDSQLiteBackup1.Backup;
        End;
      end;
      if (Encrypt = True) then
      Begin
        FDSQLiteSecurity1.DriverLink := FDPhysSQLiteDriverLink1;
        FDSQLiteSecurity1.database := output;
        FDSQLiteSecurity1.Password := 'Painkiller';
        FDSQLiteSecurity1.SetPassword;
        ShowMessage('La base de donn�es a �t� sauvegardent avec succ�s');
      End;
    End;
  End;
end;

procedure TMain.Label73Click(Sender: TObject);
begin
  inherited;
  try
    ShellExecute(0, 'open', 'c:\Windows\system32\calc.exe', nil, nil,
      SW_SHOWNORMAL);
  except
    on E: Exception do
      ShowMessage
        ('Il semble que la calculatrice ne fonctionne pas bien dans votre syst�me');
  end;
end;

procedure TMain.Label75Click(Sender: TObject);
Var
  OpenDialog1: TOpenDialog;
  Path, DirPath, input: String;
  i, j: Integer;
  bol, bol1: Boolean;
const
  Tabs: array [1 .. 8] of String = ('Medecin', 'Etablissement', 'Parametre',
    'Patient', 'Biochimie', 'Hemogramme', 'Hemostase_VS', 'Serologie');
begin
  inherited;
  bol := False;
  bol1 := True;
  Path := '';
  DirPath := '';
  input := '';
  OpenDialog1 := TOpenDialog.Create(Self);
  OpenDialog1.Filter := ('BAK file|*.BAK|db file|*.db|All|*.*');
  DirPath := GetEnvironmentVariable('AppData');
  Path := (DirPath + '\SangyMed\Data.db');
  if (OpenDialog1.Execute) then
  Begin
    input := OpenDialog1.FileName;
    With DataModule1 do
    begin
      // Dencrypt
      FDSQLiteSecurity1.DriverLink := FDPhysSQLiteDriverLink1;
      FDSQLiteSecurity1.database := input;
      FDSQLiteSecurity1.Password := 'Painkiller';
      try
        FDSQLiteSecurity1.RemovePassword;
      except
        on E: Exception do
        Begin
          bol1 := False;
        End;
      end;
      for i := 1 to length(Tabs) do
      Begin
        FDConnection3.Params.Add('Database=' + input);
        FDConnection3.Connected := True;
        FDConnection4.Params.Add('Database=' + Path);
        FDConnection4.Connected := True;
        FDQuery3.SQl.Clear;
        FDQuery3.SQl.Text := ('Select * From ' + Tabs[i] + ';');
        FDQuery3.Active := True;
        FDQuery4.SQl.Clear;
        FDQuery4.SQl.Text := ('Select * From ' + Tabs[i] + ';');
        FDQuery4.Active := True;
        FDBatchMoveDataSetReader1.DataSet := FDQuery3;
        FDBatchMoveDataSetWriter1.DataSet := FDQuery4;
        try
          FDBatchMove1.Execute();
        except
          on E: Exception do
          Begin
            ShowMessage
              ('Il semble que les donn�es que vous essayez de restaurer d�j� existent.');
            bol := True;
            Break;
          End;
        end;
        FDQuery3.Active := False;
        FDQuery4.Active := False;
      End;
      // Encrypt
      if (bol = True) then
      begin
        FDSQLiteSecurity1.DriverLink := FDPhysSQLiteDriverLink1;
        FDSQLiteSecurity1.database := input;
        FDSQLiteSecurity1.Password := 'Painkiller';
        FDSQLiteSecurity1.SetPassword;
      end;
      if (bol = False) then
        ShowMessage('La base de donn�es a �t� restaurer avec succ�s');
    end;
  End;
end;

procedure TMain.Label76Click(Sender: TObject);
begin
  inherited;
  if (Label76.RotationAngle = 0) then
  Begin
    Label76.RotationAngle := 180;
    GroupBox1.Height := 112;
    GroupBox2.Visible := True;
    GroupBox3.Visible := True;
    GroupBox4.Visible := True;
    Layout2.Height := Layout31.Height + GroupBox1.Height;
  End
  else if (Label76.RotationAngle = 180) then
  Begin
    Label76.RotationAngle := 0;
    GroupBox1.Height := 33;
    GroupBox2.Visible := False;
    GroupBox3.Visible := False;
    GroupBox4.Visible := False;
    Layout2.Height := Layout31.Height + GroupBox1.Height;
  End;
end;

procedure TMain.New_PatientClick(Sender: TObject);
begin
  inherited;
  Nouveau_Patient.Visible := True;
  Nouveau_Patient.OnClick(Patient);
  Nouveau_Patient.IsSelected := True;
  TabItem1.IsSelected := True;
  Main.OnResize(Self);
end;

procedure TMain.Nouveau_PatientClick(Sender: TObject);
begin
  inherited;
  H_Gen_Patient.Visible := False;
  H_Accueil.IsSelected := False;
  H_Gen_NouveauP.Visible := True;
  H_Gen_RechercheP.Visible := False;
  H_Gen_NouveauP.IsSelected := True;
end;

procedure TMain.Nouveau_PatientResize(Sender: TObject);
begin
  inherited;
  Frame_Principale.OnResize(Frame_Principale);
  Frame_Information.OnResize(Frame_Information);
  Frame_Hemogramme.OnResize(Frame_Hemogramme);
  Frame_Hemostase.OnResize(Frame_Hemostase);
  Frame_Biochimic.OnResize(Frame_Biochimic);
  Frame_Serologie.OnResize(Frame_Serologie);
  // Frame_Ordonnance.OnResize(Frame_Ordonnance);
end;

function TabExist(Tab: String): Boolean;
Begin
  With Main do
  Begin
    With DataModule1.FDQuery1 do
    Begin
      Active := False;
      SQl.Clear;
      SQl.Text := ('Select * From ' + Tab + ' Where Patient_ID="' +
        Patient_ID + '"');
      Active := True;
      Open;
      if (Locate('Patient_ID', Patient_ID, [])) then
        Result := True
      else
        Result := False;
      Active := False;
      SQl.Clear;
    End;
  End;
End;

procedure TMain.OrdonnanceClick(Sender: TObject);
begin
  inherited;
  H_Gen_Patient.Visible := False;
  H_Gen_RechercheP.Visible := False;
  H_Gen_NouveauP.Visible := False;
end;

procedure TMain.PatientClick(Sender: TObject);
begin
  inherited;
  H_Gen_Patient.Visible := True;
  H_Gen_Patient.IsSelected := True;
  H_Gen_RechercheP.Visible := False;
  H_Gen_NouveauP.Visible := False;
end;

procedure TMain.Patient_RechercheClick(Sender: TObject);
begin
  inherited;
  Recherche_Patient.Visible := True;
  Recherche_Patient.OnClick(Patient);
  Recherche_Patient.IsSelected := True;
  Main.OnResize(Main);
end;

procedure TMain.PoP2_HemogClick(Sender: TObject);
Var
  Print_HMDlg: TPrint_HM;
  i: Integer;
begin
  inherited;
  if (Patient_ID <> '') then
  Begin
    if (TabExist('Hemogramme') = True) then
    Begin
      Print_HMDlg := TPrint_HM.Create(Self);
      i := LoadTheme(Print_HMDlg);
      if (i = 0) then
      Begin
        Print_HMDlg.Rectangle1.Visible := True;
        Print_HMDlg.Rectangle2.Visible := False;
      End
      else if (i = 1) then
      Begin
        Print_HMDlg.Rectangle1.Visible := True;
        Print_HMDlg.Rectangle2.Visible := False;
      End;
      if (Print_HMDlg.ShowModal = mrCancel) then
        Print_HMDlg.Free;
    End
    else
      ShowMessage('Ce patient �''a pas de dossier d''analyse de l''H�mogramme');
  End
  else
    ShowMessage('Sil vous plait choisir une patient');
end;

procedure TMain.PoP2_HemosClick(Sender: TObject);
Var
  PrintHSDlg: Tprint_HS;
  i: Integer;
begin
  inherited;
  if (Patient_ID <> '') then
  Begin
    if (TabExist('Hemostase_VS') = True) then
    Begin
      PrintHSDlg := Tprint_HS.Create(Self);
      i := LoadTheme(PrintHSDlg);
      if (i = 0) then
      Begin
        PrintHSDlg.Rectangle1.Visible := True;
        PrintHSDlg.Rectangle2.Visible := False;
      End
      else if (i = 1) then
      Begin
        PrintHSDlg.Rectangle2.Visible := True;
        PrintHSDlg.Rectangle1.Visible := False;
      End;
      if (PrintHSDlg.ShowModal = mrCancel) then
        PrintHSDlg.Free;
    End
    else
      ShowMessage
        ('Ce patient �''a pas de dossier d''analyse de l''H�mostase et VS');
  End
  else
    ShowMessage('Sil vous plait choisir une patient');
end;

procedure TMain.PoP2_BoiClick(Sender: TObject);
Var
  PrintBioDLg: TPrint_Bio;
  i: Integer;
begin
  inherited;
  if (Patient_ID <> '') then
  Begin
    if (TabExist('Biochimie') = True) then
    Begin
      PrintBioDLg := TPrint_Bio.Create(Self);
      i := LoadTheme(PrintBioDLg);
      if (i = 0) then
      Begin
        PrintBioDLg.Rectangle1.Visible := True;
        PrintBioDLg.Rectangle2.Visible := False;
      End
      else if (i = 1) then
      Begin
        PrintBioDLg.Rectangle1.Visible := True;
        PrintBioDLg.Rectangle2.Visible := False;
      End;
      if (PrintBioDLg.ShowModal = mrCancel) then
        PrintBioDLg.Free;
    End
    else
      ShowMessage('Ce patient �''a pas de dossier d''analyse de la Biochimie');
  end
  else
    ShowMessage('Sil vous plait choisir une patient');
end;

procedure TMain.PoP2_SerologieClick(Sender: TObject);
Var
  PrintSRDlg: TPrint_SR;
  i: Integer;
begin
  inherited;
  if (Patient_ID <> '') then
  Begin
    if (TabExist('Serologie') = True) then
    Begin
      PrintSRDlg := TPrint_SR.Create(Self);
      i := LoadTheme(PrintSRDlg);
      if (i = 0) then
      Begin
        PrintSRDlg.Rectangle7.Visible := True;
        PrintSRDlg.Rectangle8.Visible := False;
      End
      else if (i = 1) then
      Begin
        PrintSRDlg.Rectangle7.Visible := True;
        PrintSRDlg.Rectangle8.Visible := False;
      End;
      if (PrintSRDlg.ShowModal = mrCancel) then
        PrintSRDlg.Free;
    End
    else
      ShowMessage('Ce patient �''a pas de dossier d''analyse de la S�rologie');
  End
  else
    ShowMessage('Sil vous plait choisir une patient');
end;

procedure TMain.PoP_BiochimicClick(Sender: TObject);
begin
  inherited;
  if (Patient_ID <> '') then
  Begin
    Edit_Patient.Visible := True;
    Edit_Patient.IsSelected := True;
    H_Accueil.IsSelected := True;
    TabItem11.IsSelected := True;
    Frame_EP_Principale.OnDataLoad;
    Frame_EP_Information.OnDataLoad;
    Frame_EP_Hemogramme.OnDataLoad;
    Frame_EP_Hemostase.OnDataLoad;
    Frame_EP_Serologie.OnDataLoad;
    Frame_EP_Biochimic.OnDataLoad;
  End
  else
  Begin
    ShowMessage
      ('Sil vous plait choisir une patient ou double clicker sur un patient pour le modifier');
  End;
end;

procedure TMain.PoP_HemogrammeClick(Sender: TObject);
begin
  inherited;
  if (Patient_ID <> '') then
  Begin
    Edit_Patient.Visible := True;
    Edit_Patient.IsSelected := True;
    H_Accueil.IsSelected := True;
    TabItem9.IsSelected := True;
    Frame_EP_Principale.OnDataLoad;
    Frame_EP_Information.OnDataLoad;
    Frame_EP_Hemogramme.OnDataLoad;
    Frame_EP_Hemostase.OnDataLoad;
    Frame_EP_Serologie.OnDataLoad;
    Frame_EP_Biochimic.OnDataLoad;
  End
  else
  Begin
    ShowMessage
      ('Sil vous plait choisir une patient ou double clicker sur un patient pour le modifier');
  End;
end;

procedure TMain.PoP_HemostaseClick(Sender: TObject);
begin
  inherited;
  if (Patient_ID <> '') then
  Begin
    Edit_Patient.Visible := True;
    Edit_Patient.IsSelected := True;
    H_Accueil.IsSelected := True;
    TabItem10.IsSelected := True;
    Frame_EP_Principale.OnDataLoad;
    Frame_EP_Information.OnDataLoad;
    Frame_EP_Hemogramme.OnDataLoad;
    Frame_EP_Hemostase.OnDataLoad;
    Frame_EP_Serologie.OnDataLoad;
    Frame_EP_Biochimic.OnDataLoad;
  End
  else
  Begin
    ShowMessage
      ('Sil vous plait choisir une patient ou double clicker sur un patient pour le modifier');
  End;
end;

procedure TMain.PoP_SerologieClick(Sender: TObject);
begin
  inherited;
  if (Patient_ID <> '') then
  Begin
    Edit_Patient.Visible := True;
    Edit_Patient.IsSelected := True;
    H_Accueil.IsSelected := True;
    TabItem12.IsSelected := True;
    Frame_EP_Principale.OnDataLoad;
    Frame_EP_Information.OnDataLoad;
    Frame_EP_Hemogramme.OnDataLoad;
    Frame_EP_Hemostase.OnDataLoad;
    Frame_EP_Serologie.OnDataLoad;
    Frame_EP_Biochimic.OnDataLoad;
  End
  else
  Begin
    ShowMessage
      ('Sil vous plait choisir une patient ou double clicker sur un patient pour le modifier');
  End;
end;

procedure TMain.P_AccueilClick(Sender: TObject);
begin
  inherited;
  H_Gen_Patient.Visible := False;
  H_Accueil.IsSelected := True;
  H_Gen_RechercheP.Visible := False;
  H_Gen_NouveauP.Visible := False;
end;

procedure TMain.P_AccueilResize(Sender: TObject);
begin
  inherited;
  // Width
  L_Left_P_Accueil.Width := MainT.Width / 2;
  L_Right_P_Accueil.Width := MainT.Width / 2;
  // Height
  GrouBox1_Table.Height := L_Left_P_Accueil.Height / 2;
  GrouBox2_Table.Height := L_Right_P_Accueil.Height / 2;
  GrouBox3_Table.Height := L_Left_P_Accueil.Height / 2;
  GrouBox4_Table.Height := L_Right_P_Accueil.Height / 2;
end;

procedure TMain.RB_ExterneChange(Sender: TObject);
begin
  inherited;
  if (RB_Externe.IsChecked = True) then
    Edit_Recherche.OnChangeTracking(Self);
end;

procedure TMain.RB_InterneChange(Sender: TObject);
begin
  inherited;
  if (RB_Interne.IsChecked = True) then
    Edit_Recherche.OnChangeTracking(Self);
end;

procedure TMain.RB_NomChange(Sender: TObject);
begin
  inherited;
  Edit_Recherche.OnChangeTracking(Self);
end;

procedure TMain.RB_PrenomChange(Sender: TObject);
begin
  inherited;
  Edit_Recherche.OnChangeTracking(Self);
end;

procedure TMain.RDVClick(Sender: TObject);
begin
  inherited;
  H_Gen_Patient.Visible := False;
  H_Gen_RechercheP.Visible := False;
  H_Gen_NouveauP.Visible := False;
end;

procedure TMain.Recherche_PatientClick(Sender: TObject);
begin
  inherited;
  H_Gen_Patient.Visible := False;
  H_Accueil.IsSelected := False;
  H_Gen_NouveauP.Visible := False;
  H_Gen_RechercheP.Visible := True;
  H_Gen_RechercheP.IsSelected := True;
end;

procedure TMain.Refresh_Patient_TableMouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
  inherited;
  FloatAnimation5.enabled := False;
end;

procedure TMain.Refresh_Patient_TableMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
  inherited;
  FloatAnimation5.enabled := True;
end;

procedure TMain.T_AccueilClick(Sender: TObject);
begin
  inherited;
  P_Accueil.Visible := True;
  P_Accueil.OnClick(P_Accueil);
  P_Accueil.IsSelected := True;
end;

procedure TMain.T_PatientClick(Sender: TObject);
begin
  inherited;
  Patient.Visible := True;
  Patient.OnClick(Patient);
  Patient.IsSelected := True;
end;

procedure TMain.T_RDVClick(Sender: TObject);
Var
  ConnecterDlg: TConnecter;
  Msg: Integer;
begin
  inherited;
  if (Pass = False) then
    Msg := MessageDlg('�tes-vous s�r', TMsgDlgType.mtInformation,
      [TMsgDlgBtn.mbYes, TMsgDlgBtn.mbNo], 0);
  if ((Msg = mrYes) or (Pass = True)) then
  Begin
    DataModule1.Init();
    ConnecterDlg := TConnecter.Create(Self);
    if (ConnecterDlg.ShowModal = mrOk) then
    Begin
      ShowMessage('Bienvenue MR ''' + Nom);
      // Load();
      LoadParam;
      ConnecterDlg.Free;
    End
    else
      Application.Terminate;
  End;

end;

end.
