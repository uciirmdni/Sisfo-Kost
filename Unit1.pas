unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ADODB, jpeg, ExtCtrls, Buttons;

type
  TFLogin = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    ADOQuery1: TADOQuery;
    Image1: TImage;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLogin: TFLogin;

implementation

uses Unit2;

{$R *.dfm}


procedure TFLogin.BitBtn1Click(Sender: TObject);
begin
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Add('select*from login where User=:vuser and Password=:vpass');
ADOQuery1.Parameters.ParamByName('vuser').Value:= Edit1.Text;
ADOQuery1.Parameters.ParamByName('vpass').Value:= Edit2.Text;
ADOQuery1.Open;

  If ADOQuery1.RecordCount <= 0 then
  begin
  Edit1.SetFocus;
  Edit2.SetFocus;
  end

  else
  begin
  FLogin.Hide;
  FMenu.Show;
  end;
end;




end.
