program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {FLogin},
  Unit2 in 'Menu\Unit2.pas' {FMenu},
  Unit3 in 'Penyewa\Unit3.pas' {FPenyewa},
  Unit4 in 'Kamar\Unit4.pas' {FKamar},
  Unit6 in 'Transaksi\Unit6.pas' {FTransaksi},
  Unit8 in 'Quickrep\Unit8.pas' {QuickReport8: TQuickRep},
  Unit9 in 'Quickrep Transaksi\Unit9.pas' {QuickReport9: TQuickRep},
  Unit5 in 'Aboutme\Unit5.pas' {FAboutMe};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFLogin, FLogin);
  Application.CreateForm(TFMenu, FMenu);
  Application.CreateForm(TFPenyewa, FPenyewa);
  Application.CreateForm(TFKamar, FKamar);
  Application.CreateForm(TFTransaksi, FTransaksi);
  Application.CreateForm(TQuickReport8, QuickReport8);
  Application.CreateForm(TQuickReport9, QuickReport9);
  Application.CreateForm(TFAboutMe, FAboutMe);
  Application.Run;
end.
