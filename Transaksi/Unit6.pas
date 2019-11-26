unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, DB, Grids, DBGrids, ADODB, StdCtrls, Buttons,
  ComCtrls;

type
  TFTransaksi = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    ADOQuery1: TADOQuery;
    ADOConnection1: TADOConnection;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn5: TBitBtn;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    ComboBox1: TComboBox;
    Label4: TLabel;
    Label5: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DateTimePicker3: TDateTimePicker;
    Edit2: TEdit;
    ComboBox2: TComboBox;
    Edit3: TEdit;
    Label10: TLabel;
    Edit4: TEdit;
    Label11: TLabel;
    Label12: TLabel;
    Edit6: TEdit;
    Label14: TLabel;
    Edit8: TEdit;
    Memo1: TMemo;
    Button1: TButton;
    BitBtn6: TBitBtn;
    CBFasilitas: TComboBox;
    Edit5: TEdit;
    Label13: TLabel;
    BitBtn4: TBitBtn;
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure CBFasilitasChange(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTransaksi: TFTransaksi;
  ByAwal, ByLain, lmbt, Denda, Total : Real;

implementation

uses Unit2, Unit5, Unit9;

{$R *.dfm}

procedure TFTransaksi.Button1Click(Sender: TObject);
begin

ByAwal := strtofloat (Edit4.Text);
ByLain := strtofloat (Edit5.Text);
lmbt := strtofloat (Edit6.Text);

Denda := lmbt * 200000;
Total := ByAwal + ByLain + Denda;
Edit8.Text := floattostr (Total);

end;

procedure TFTransaksi.BitBtn1Click(Sender: TObject);
begin
ADOQuery1.Append;
ADOQuery1.FieldByName('No Transaksi').AsString := Edit1.Text;
ADOQuery1.FieldByName('No Registrasi').AsString := ComboBox1.Text;
ADOQuery1.FieldByName('Tgl Masuk').AsDateTime := DateTimePicker1.DateTime;
ADOQuery1.FieldByName('Tgl Keluar').AsDateTime := DateTimePicker2.DateTime;
ADOQuery1.FieldByName('Nama Penyewa').AsString := Edit2.Text;
ADOQuery1.FieldByName('Kode Kamar').AsString := ComboBox2.Text;
ADOQuery1.FieldByName('Jumlah Penyewa').AsString := Edit3.Text;
ADOQuery1.FieldByName('Tgl Jatuh Tempo').AsDateTime := DateTimePicker3.DateTime;
ADOQuery1.FieldByName('Biaya Awal (Rp)').AsString := Edit4.Text;
ADOQuery1.FieldByName('Biaya Lain-lain (Rp)').AsString := Edit5.Text;
ADOQuery1.FieldByName('Keterlambatan (Bulan)').AsString := Edit6.Text;
ADOQuery1.FieldByName('Total Biaya (Rp)').AsString := Edit8.Text;
end;

procedure TFTransaksi.BitBtn5Click(Sender: TObject);
begin
FTransaksi.Hide;
FMenu.Show;
end;

procedure TFTransaksi.BitBtn2Click(Sender: TObject);
begin
ADOQuery1.Edit;
ADOQuery1.FieldByName('No Transaksi').AsString := Edit1.Text;
ADOQuery1.FieldByName('No Registrasi').AsString := ComboBox1.Text;
ADOQuery1.FieldByName('Tgl Masuk').AsDateTime := DateTimePicker1.DateTime;
ADOQuery1.FieldByName('Tgl Keluar').AsDateTime := DateTimePicker2.DateTime;
ADOQuery1.FieldByName('Nama Penyewa').AsString := Edit2.Text;
ADOQuery1.FieldByName('Kode Kamar').AsString := ComboBox2.Text;
ADOQuery1.FieldByName('Jumlah Penyewa').AsString := Edit3.Text;
ADOQuery1.FieldByName('Tgl Jatuh Tempo').AsDateTime := DateTimePicker3.DateTime;
ADOQuery1.FieldByName('Biaya Awal (Rp)').AsString := Edit4.Text;
ADOQuery1.FieldByName('Biaya Lain-lain (Rp)').AsString := Edit5.Text;
ADOQuery1.FieldByName('Keterlambatan (Bulan)').AsString := Edit6.Text;
ADOQuery1.FieldByName('Total Biaya (Rp)').AsString := Edit8.Text;
ADOQuery1.Post;
end;

procedure TFTransaksi.BitBtn3Click(Sender: TObject);
begin
ADOQuery1.Delete;
end;

procedure TFTransaksi.BitBtn6Click(Sender: TObject);
begin
QuickReport9.Preview;
end;

procedure TFTransaksi.CBFasilitasChange(Sender: TObject);
begin

If CBFasilitas.ItemIndex = 0 then
ByLain := 450000

else
If CBFasilitas.ItemIndex = 1 then
ByLain := 300000

else
If CBFasilitas.ItemIndex = 2 then
ByLain := 250000

else
If CBFasilitas.ItemIndex = 3 then
ByLain := 50000

else
If CBFasilitas.ItemIndex = 4 then
ByLain := 350000

else
ByLain := 50000;

Edit5.Text := floattostr (ByLain);
end;



procedure TFTransaksi.BitBtn4Click(Sender: TObject);
begin
Edit1.Text := '';
Edit2.Text := '';
Edit3.Text := '';
Edit4.Text := '';
Edit5.Text := '';
Edit6.Text := '';
Edit8.Text := '';
ComboBox1.Text := '';
ComboBox2.Text := '';
CBFasilitas.Text := '';
end;

end.
