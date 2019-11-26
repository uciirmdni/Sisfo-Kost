unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, Grids, DBGrids, DB, ADODB, StdCtrls, Buttons,
  ComCtrls, ExtDlgs;

type
  TFPenyewa = class(TForm)
    Image1: TImage;
    DataSource1: TDataSource;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    ComboBox1: TComboBox;
    Label3: TLabel;
    Edit1: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    Edit3: TEdit;
    ComboBox5: TComboBox;
    Label11: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    Memo1: TMemo;
    Edit2: TEdit;
    DateTimePicker1: TDateTimePicker;
    OpenPictureDialog1: TOpenPictureDialog;
    BitBtn3: TBitBtn;
    Edit7: TEdit;
    BitBtn6: TBitBtn;
    Image2: TImage;
    BitBtn7: TBitBtn;
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure BitBtn7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPenyewa : TFPenyewa;
  Stream : TMemoryStream;
  Jpg : TJpegImage;

implementation

uses Unit2, Unit8;

{$R *.dfm}


procedure TFPenyewa.BitBtn5Click(Sender: TObject);
begin
FPenyewa.Hide;
FMenu.Show;
end;


procedure TFPenyewa.BitBtn1Click(Sender: TObject);

var Stream : TMemoryStream;

begin
Stream := TMemoryStream.Create;
Image2.Picture.Graphic.SaveToStream(stream);
stream.Position := 0;
ADOQuery1.Append;
ADOQuery1.FieldByName('Nomor Registrasi').AsString := ComboBox1.Text;
ADOQuery1.FieldByName('Nama Lengkap').AsString := Edit1.Text;
ADOQuery1.FieldByName('Tempat Lahir').AsString := Edit2.Text;
ADOQuery1.FieldByName('Tanggal Lahir').AsDateTime := DateTimePicker1.DateTime;
ADOQuery1.FieldByName('Alamat Asal').AsString := Edit3.Text;
ADOQuery1.FieldByName('Jenis Kelamin').AsString := ComboBox3.Text;
ADOQuery1.FieldByName('Agama').AsString := ComboBox4.Text;
ADOQuery1.FieldByName('Pekerjaan').AsString := Edit4.Text;
ADOQuery1.FieldByName('Jenis Pengenal').AsString := ComboBox5.Text;
ADOQuery1.FieldByName('ID Pengenal').AsString := Edit5.Text;
ADOQuery1.FieldByName('No HP').AsString := Edit6.Text;
TBlobfield(ADOQuery1.FieldByName('Foto')).LoadFromStream(Stream);
Stream.Free;
ADOQuery1.Post;
end;

procedure TFPenyewa.BitBtn2Click(Sender: TObject);
begin
ADOQuery1.Edit;
ADOQuery1.FieldByName('Nomor Registrasi').AsString := ComboBox1.Text;
ADOQuery1.FieldByName('Nama Lengkap').AsString := Edit1.Text;
ADOQuery1.FieldByName('Tempat Lahir').AsString := Edit2.Text;
ADOQuery1.FieldByName('Tanggal Lahir').AsDateTime := DateTimePicker1.DateTime;
ADOQuery1.FieldByName('Alamat Asal').AsString := Edit3.Text;
ADOQuery1.FieldByName('Jenis Kelamin').AsString := ComboBox3.Text;
ADOQuery1.FieldByName('Agama').AsString := ComboBox4.Text;
ADOQuery1.FieldByName('Pekerjaan').AsString := Edit4.Text;
ADOQuery1.FieldByName('Jenis Pengenal').AsString := ComboBox5.Text;
ADOQuery1.FieldByName('ID Pengenal').AsString := Edit5.Text;
ADOQuery1.FieldByName('No HP').AsString := Edit6.Text;
ADOQuery1.Post;
end;

procedure TFPenyewa.BitBtn4Click(Sender: TObject);
begin
ADOQuery1.Delete;
end;

procedure TFPenyewa.BitBtn3Click(Sender: TObject);
begin
If OpenPictureDialog1.Execute then
begin
Edit7.Text := OpenPictureDialog1.FileName;
Image2.Picture.LoadFromFile(Edit7.Text);
end;

end;

procedure TFPenyewa.BitBtn6Click(Sender: TObject);
begin
QuickReport8.Preview;
end;
 
procedure TFPenyewa.DBGrid1CellClick(Column: TColumn);
begin

Jpg := TJpegImage.Create;
Stream := TMemoryStream.Create;
TBlobfield(ADOQuery1.FieldByName('Foto')).SaveToStream(Stream);
Stream.Position := 0;
Jpg.LoadFromStream(Stream);
Image2.Picture.Graphic := jpg;
end;

procedure TFPenyewa.BitBtn7Click(Sender: TObject);
begin
Edit1.Text := '';
Edit2.Text := '';
Edit3.Text := '';
Edit4.Text := '';
Edit5.Text := '';
Edit6.Text := '';
Edit7.Text := '';
ComboBox1.Text := '';
ComboBox3.Text := '';
ComboBox4.Text := '';
ComboBox5.Text := '';
end;

end.
