unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, Menus, DB, ADODB, StdCtrls;

type
  TFMenu = class(TForm)
    Image1: TImage;
    MainMenu1: TMainMenu;
    Logout1: TMenuItem;
    DataPenyewa1: TMenuItem;
    DataKamar1: TMenuItem;
    ransaksi1: TMenuItem;
    Report1: TMenuItem;
    DataPenyewa2: TMenuItem;
    ransaksi2: TMenuItem;
    About1: TMenuItem;
    Label1: TLabel;
    Label2: TLabel;
    procedure Logout1Click(Sender: TObject);
    procedure DataPenyewa1Click(Sender: TObject);
    procedure DataKamar1Click(Sender: TObject);
    procedure ransaksi1Click(Sender: TObject);
    procedure DataPenyewa2Click(Sender: TObject);
    procedure About1Click(Sender: TObject);
    procedure ransaksi2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMenu: TFMenu;

implementation

uses Unit1, Unit3, Unit4, Unit5, Unit6, Unit8, Unit9;

{$R *.dfm}


procedure TFMenu.Logout1Click(Sender: TObject);
begin
FLogin.Show;
FMenu.Hide;
end;


procedure TFMenu.DataPenyewa1Click(Sender: TObject);
begin
FMenu.Hide;
FPenyewa.Show;
end;

procedure TFMenu.DataKamar1Click(Sender: TObject);
begin
FMenu.Hide;
FKamar.Show;
end;

procedure TFMenu.ransaksi1Click(Sender: TObject);
begin
FMenu.Hide;
FTransaksi.Show;
end;

procedure TFMenu.DataPenyewa2Click(Sender: TObject);
begin
QuickReport8.Preview;
end;

procedure TFMenu.About1Click(Sender: TObject);
begin
FMenu.Hide;
FAboutMe.Show;
end;

procedure TFMenu.ransaksi2Click(Sender: TObject);
begin
QuickReport9.Preview;
end;

end.
