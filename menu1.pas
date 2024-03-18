Unit menu1; {---^_^---judul---^_^---}
interface
{---^_^------^_^---Link Modul---^_^------^_^---}
uses crt,sysutils;
{---^_^---PROTOTYPE PROCEDURE---^_^---}
Procedure menu (var mPil : Char);
{---^_^---I.S: Pil sebuah karakter sembarang         ---^_^---}
{---^_^---F.S: Pil Berisi Pilihan '0','1','2','3','4'---^_^---}
Implementation
    {---^_^--- REALISASI MENU---^_^---}
   Procedure menu (var mPil : Char);
   {---^_^---I.S: Pil sebuah karakter sembarang         ---^_^---}
   {---^_^---F.S: Pil Berisi Pilihan '0','1','2','3','4','5','6'---^_^---}
   {---^_^---Var Lokal // TIDAK ADA---^_^---}
   Begin
      clrscr;
      writeln('^----------------^_^-----------------^');
      writeln('|       PROGRAM NILAI MAHASISWA      |');
      writeln('^------------------------------------^');
      writeln('|Nama: Arif NoerWahidin');
      gotoxy(25,4); Writeln('NPM: 11210072|');
      writeln('^------------------------------------^');
      writeln('|[1] Input Data Nilai Manual         |');
      writeln('|[2] Input Data Nilai Otomatis       |');
      writeln('|[3] Input Nilai File TXT            |');
      writeln('|[4] Pelaporan Penilaian Manual      |');
      writeln('|[5] Pelaporan Penilaian Otomatis    |');
      writeln('|[6] Pelaporan Nilai File TXT        |');
      writeln('+------------------------------------+');
      writeln('|[0] Selesai          Pilih Menu :   |');
      writeln('^------------------------------------^');
      Writeln('|         ',DateTimeToStr(Now),'        |');
      writeln('+------------------------------------+');
      gotoxy(36,13); readln(mPil);
     
   end;
  
end.
