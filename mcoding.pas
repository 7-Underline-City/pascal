Unit mcoding; {---^_^---judul---^_^---}
{
---^_^---PROCEDURE DAN FUNCTION MANUAL---^_^---
1. Procedure arf_manual (var arf_tbl1:arf_input1);
2. Procedure arf_hmhs(var arf_tbl1:arf_input1);
3. Procedure arf_imhs (var arf_tbl1:arf_input1);
4. Function arf_ratamhs (arf_tbl1:arf_input1):real;
5. Function arf_nmin (arf_tbl1:arf_input1):real;
6. Function arf_nmax (arf_tbl1:arf_input1):real;
7. Procedure arf_tbl_manual (arf_tbl1:arf_input1);
---^_^---PROCEDURE DAN FUNCTION OTOMATIS---^_^---
1. Procedure arf_otomatis (var arf_tbl2:arf_input2);
2. Procedure arf_hotomatis (var arf_tbl2:arf_input2);
3. Procedure arf_iotomatis (var arf_tbl2:arf_input2);
4. Function arf_rata_otomatis (arf_tbl2:arf_input2):real;
5. Function arf_nmin_otomatis (arf_tbl2:arf_input2):real;
6. Function arf_nmax_otomatis (arf_tbl2:arf_input2):real;
7. Procedure arf_tbl_otomatis (arf_tbl2:arf_input2);
---^_^---PROCEDURE DAN FUNCTION FILE TEXT---^_^---
1. procedure openteks(var dt : datateks; namateks : string);
2. procedure input_data( var dt : datateks; var nilai : arf_input3);
3. Procedure arf_fhitung(var arf_tbl3:arf_input3);
4. Procedure arf_indexf(var arf_tbl3:arf_input3);
5. Function arf_frata (arf_tbl3:arf_input3):real;
6. Function arf_fmin (arf_tbl3:arf_input3):real;
7. Function arf_fmax (arf_tbl3:arf_input3):real;
8. procedure arf_tbl_txt(nilai : arf_input3);
+------------------------------^_^-------------------------------+}
{---^_^------^_^---Kamus Data---^_^------^_^---}
interface
{---^_^------^_^---Link Modul---^_^------^_^---}
uses crt,sysutils;
{---^_^---Identifikasi Data skop UNIT---^_^---}
const n=15;
Type Elemen1=record
        Nim:String[8];
        Nama:string[100];
        indeks:string[1];
        Kehadiran,UTS,UAS:integer;
        NA:real;
     end;
     Elemen2=record
        Nim,nim2,nim3,nim4,nim5,nim6,nim7,nim8,
        Nama,Nama1,Nama2,Nama3,kehadiran,uts,uas:longint;
        indeks:string;
        NA:Real;
     end;
     elemen3 =  Record 
         Nim : String[8];
         Nama : String[30];
         Kehadiran : Integer;
         UTS : Integer;
         UAS : Integer;
         NA : Real;
         Indeks : String[10];
     End;
     arf_input1 = Array [1..n] of Elemen1;
     arf_input2 = Array [1..n] of elemen2;
     arf_input3 = Array[1..n] of elemen3;
     datateks = TEXT;
var  farf_tbl1 : arf_input1;
     farf_tbl2 : arf_input2;
     arf_tbl3 : arf_input3;
     odt : datateks;
{---^_^---PROTOTYPE PROCEDURE DAN FUNCTION MANUAL---^_^---}
Procedure arf_manual (var arf_tbl1:arf_input1);
   {---^_^---I.S: arf_tbl1 sebuah Tabel Record Sembarang---^_^---}
   {---^_^---F.S: arf_tbl1 berisi data hasil input Nim,Nama,kehadiran,UTS,UAS---^_^---}
Procedure arf_hmhs(var arf_tbl1:arf_input1);
{---^_^---I.S: arf_tbl1 Tabel Record Terisi Nilai Kehadiran, UTS, UAS---^_^---}
   {---^_^---F.S: arf_tbl1 Terisi Nilai Hasil Kehadiran,UTS,UAS, NA---^_^---}
Procedure arf_imhs (var arf_tbl1:arf_input1);
   {---^_^---I.S: arf_tbl1 Record Terisi Nilai Index Berupa Angka---^_^---}
   {---^_^---F.S: arf_tbl1 Hasil Index Terisi Nilai A,B,C,D,E---^_^---}
Function arf_ratamhs (arf_tbl1:arf_input1):real;
   {---^_^---I.S: arf_tbl1 Yang Sudah Terisi Na---^_^---}
   {---^_^---F.S: Hasil darijml/n---^_^---}
Function arf_nmin (arf_tbl1:arf_input1):real;
   {---^_^---I.S: arf_tbl1 Yang Sudah Terisi Na---^_^---}
   {---^_^---F.S: Sebuah Angka NA Terkecil Dari arf_tbl1---^_^---}
Function arf_nmax (arf_tbl1:arf_input1):real;
   {---^_^---I.S: arf_tbl1 Yang Sudah Terisi Na---^_^---}
   {---^_^---F.S: Sebuah Angka NA Terbesar Dari arf_tbl1---^_^---}
Procedure arf_tbl_manual (arf_tbl1:arf_input1);
   {---^_^---I.S: arf_tbl1 Sebuah Tabel Record Input Manual---^_^---}
   {---^_^---F.S: Terhitung NA,Indeks,RR,Min,Max, Dan Tercetak NO, NIM, Nama Kehadiran UTS, UAS---^_^---}
{---^_^---PROTOTYPE PROCEDURE DAN FUNCTION OTOMATIS---^_^---}
Procedure arf_otomatis (var arf_tbl2:arf_input2);
   {---^_^---I.S: arf_tbl2 sebuah Tabel Record Input Otomatis yang diisi secara random---^_^---}
   {---^_^---F.S: arf_tbl2 berisi data hasil input Random Nim,Nama,kehadiran,UTS,UAS---^_^---}
Procedure arf_hotomatis (var arf_tbl2:arf_input2);
   {---^_^---I.S: arf_tbl2 Tabel Record Terisi Nilai Kehadiran, UTS, UAS---^_^---}
   {---^_^---F.S: arf_tbl2 Terhitung Nilai NA, UTS, UAS---^_^---}
Procedure arf_iotomatis (var arf_tbl2:arf_input2);
   {---^_^---I.S: arf_tbl2 Tabel Record Terisi Nilai Index Angka---^_^---}
   {---^_^---F.S: arf_tbl2 Terhitung Nilai Index A,B,C,D,E---^_^---}
Function arf_rata_otomatis (arf_tbl2:arf_input2):real;
   {---^_^---I.S: arf_tbl2 Yang Sudah Terisi Na---^_^---}
   {---^_^---F.S: Hasil darijml/n---^_^---}
Function arf_nmin_otomatis (arf_tbl2:arf_input2):real;
   {---^_^---I.S: arf_tbl2 Yang Sudah Terisi Na---^_^---}
   {---^_^---F.S: Sebuah Angka NA Terkecil Dari arf_tbl2---^_^---}
Function arf_nmax_otomatis (arf_tbl2:arf_input2):real;
   {---^_^---I.S: arf_tbl2 Yang Sudah Terisi Na---^_^---}
   {---^_^---F.S: Sebuah Angka NA Terbesar Dari arf_tbl2---^_^---}
Procedure arf_tbl_otomatis (arf_tbl2:arf_input2);
   {---^_^---I.S: arf_tbl2 Sebuah Tabel Record Input Otomatis---^_^---}
   {---^_^---F.S: Terhitung NA,Indeks,RR,Min,Max, Dan Tercetak No,NIM,Nama, UTS, UAS, Kehadiran---^_^---}
procedure openteks(var dt : datateks; namateks : string);
   {---^_^---I.S: dt dan namateks Terisi---^_^---}
   {---^_^---F.S: dt Terbuka Dengan Nama namateks---^_^---}
procedure input_data( var dt : datateks; var nilai : arf_input3);
   {---^_^---I.S: dt dan nilai Terisi---^_^---}
   {---^_^---F.S: Nilai Dari dt Diinput Ke nilai---^_^---}
Procedure arf_fhitung(var arf_tbl3:arf_input3);
   {---^_^---I.S: arf_tbl3 Tabel Record Terisi Nilai Kehadiran, UTS, UAS---^_^---}
   {---^_^---F.S: arf_tbl3 Terisi Nilai Hasil Kehadiran,UTS,UAS, NA---^_^---}
Procedure arf_indexf(var arf_tbl3:arf_input3);
   {---^_^---I.S: arf_tbl3 Record Terisi Nilai Index Berupa Angka---^_^---}
   {---^_^---F.S: arf_tbl3 Hasil Index Terisi Nilai A,B,C,D,E---^_^---}  
Function arf_frata (arf_tbl3:arf_input3):real;
   {---^_^---I.S: arf_tbl3 Yang Sudah Terisi Na---^_^---}
   {---^_^---F.S: Hasil darijml/n---^_^---}  
Function arf_fmin (arf_tbl3:arf_input3):real;
   {---^_^---I.S: arf_tbl3 Yang Sudah Terisi Na---^_^---}
   {---^_^---F.S: Sebuah Angka NA Terkecil Dari arf_tbl3---^_^---} 
Function arf_fmax (arf_tbl3:arf_input3):real;
   {---^_^---I.S: arf_tbl3 Yang Sudah Terisi Na---^_^---}
   {---^_^---F.S: Sebuah Angka NA Terbesar Dari arf_tbl3---^_^---}

procedure arf_tbl_txt(nilai : arf_input3);
   {---^_^---I.S: Nilai Tabel Terisi Nilai Kehadiran, UTS, UAS, NA---^_^---}
   {---^_^---F.S: Tercetak dilayar Nilai Kehadiran, UTS, UAS, NA, NA Terkecil, NA Terbesar, Dan Rata-rata NA ---^_^---}

{---^_^---REALISASI ALGORITMA---^_^---}
Implementation
   {---^_^--- REALISASI arf_manual---^_^---}
   Procedure arf_manual(var arf_tbl1:arf_input1);
   {---^_^---I.S: arf_tbl1 sebuah Tabel Record Sembarang---^_^---}
   {---^_^---F.S: arf_tbl1 berisi data hasil input Nim,Nama,kehadiran,UTS,UAS---^_^---}
   var i: integer;
   begin
      clrscr;
      writeln('^----------------^_^-----------------^');
      Writeln('|      INPUT DATA NILAI MANUAL       |');
      for i:= 1 to N do begin
            writeln('+------------------------------------+');
            writeln('|  Data ke-',i,'                         |');
            begin
               writeln('+------------------------------------+');
               write('  NIM       = ');readln(arf_tbl1[i].NIM);
               writeln('+------------------------------------+');
               write('  NAMA      = ');readln(arf_tbl1[i].NAMA);
               writeln('+------------------------------------+');
               write('  KEHADIRAN = ');readln(arf_tbl1[i].Kehadiran);
               writeln('+------------------------------------+');
               write('  UTS       = ');readln(arf_tbl1[i].UTS);
               writeln('+------------------------------------+');
               write('  UAS       = ');readln(arf_tbl1[i].UAS);
               writeln('+------------------------------------+');
            end;
            clrscr;
      end;
   end;
   {---^_^--- REALISASI arf_hmhs---^_^---}
   Procedure arf_hmhs(var arf_tbl1:arf_input1);
   {---^_^---I.S: arf_tbl1 Tabel Record Terisi Nilai Kehadiran, UTS, UAS---^_^---}
   {---^_^---F.S: arf_tbl1 Terisi Nilai Hasil Kehadiran,UTS,UAS, NA---^_^---}
   var i:integer;
   begin
      for i:= 1 to N do begin
         if (arf_tbl1[i].kehadiran < 8) then 
         begin
            arf_tbl1[i].NA:=0;
         end else
         begin
         arf_tbl1[i].NA:=0.40*arf_tbl1[i].UTS+0.60*arf_tbl1[i].UAS;
         end;
      end;
   end;
   {---^_^--- Realisasi arf_imhs---^_^---}
   Procedure arf_imhs(var arf_tbl1:arf_input1);
   {---^_^---I.S: arf_tbl1 Record Terisi Nilai Index Berupa Angka---^_^---}
   {---^_^---F.S: arf_tbl1 Hasil Index Terisi Nilai A,B,C,D,E---^_^---}
   var i:integer;
   begin
      for i:= 1 to n do begin
         if (arf_tbl1[i].NA >=85) then
         begin
            arf_tbl1[i].Indeks:='A'
         end ELSE
         if (arf_tbl1[i].NA  < 85)and(arf_tbl1[i].NA  >=70) then
         begin
            arf_tbl1[i].indeks:='B'
         end else
         if (arf_tbl1[i].NA  < 70)and(arf_tbl1[i].NA  >=55) then
         begin
            arf_tbl1[i].indeks:='C'
         end else
         if (arf_tbl1[i].NA  < 55)and(arf_tbl1[i].NA  >=40) then
         begin
            arf_tbl1[i].indeks:='D'
         end else
         if (arf_tbl1[i].NA  < 40) and (arf_tbl1[i].NA >= 0 )then
         begin
            arf_tbl1[i].indeks:='E';
         end;
      end;
   end;
   {---^_^--- Realisasi arf_ratamhs---^_^---}
   Function arf_ratamhs (arf_tbl1:arf_input1):real;
   {---^_^---I.S: arf_tbl1 Yang Sudah Terisi Na---^_^---}
   {---^_^---F.S: Hasil darijml/n---^_^---}
   var i:integer;
       jml,RR:real;
   begin
     arf_hmhs(arf_tbl1);
     jml:=0;
      for i:=0 to n do begin
         jml:=jml + arf_tbl1[i+1].NA;
      end;
      RR:=(jml)/n;
      arf_ratamhs:=RR;
   end;
   {---^_^--- Realisasi arf_nmin---^_^---}
   Function arf_nmin (arf_tbl1:arf_input1):real;
   {---^_^---I.S: arf_tbl1 Yang Sudah Terisi Na---^_^---}
   {---^_^---F.S: Sebuah Angka NA Terkecil Dari arf_tbl1---^_^---}
   var i:integer;
       min:real;
   begin
     arf_hmhs(arf_tbl1);
     min:=101;
      for i:= 1 to N do begin
         if arf_tbl1[i].NA<min then begin
                                  min:=arf_tbl1[i].NA;
                               end;
      arf_nmin:=min;
      end;
   end;
   {---^_^---Realisasi arf_nmax---^_^---}
   Function arf_nmax (arf_tbl1:arf_input1):real;
   {---^_^---I.S: arf_tbl1 Yang Sudah Terisi Na---^_^---}
   {---^_^---F.S: Sebuah Angka NA Terbesar Dari arf_tbl1---^_^---}
   var i:integer;
       max:real;
   begin
     arf_hmhs(arf_tbl1);
     max:=0;
      for i:= 1 to N do begin
         if arf_tbl1[i].NA>max then begin
                                  max:=arf_tbl1[i].NA;
                               end;
      arf_nmax:=max;
      end;
   end;
   {---^_^---Realisasi arf_tbl_manual---^_^---}
   Procedure arf_tbl_manual(arf_tbl1:arf_input1);
   {---^_^---I.S: arf_tbl1 Sebuah Tabel Record Input Manual---^_^---}
   {---^_^---F.S: Terhitung NA,Indeks,RR,Min,Max, Dan Tercetak NO, NIM, Nama Kehadiran UTS, UAS---^_^---}
   var i : integer;
       lRR,lmin,lmax:real;
   begin
      arf_hmhs(arf_tbl1);
      arf_imhs(arf_tbl1);
      lRR:=arf_ratamhs(arf_tbl1);
      lmax:=arf_nmax(arf_tbl1);
      lmin:=arf_nmin(arf_tbl1);
      clrscr;
      writeln('^----------------------------------^_^---------------------------------^');
      writeln('|           LAPORAN PENILAIAN MATA KULIAH HASIL INPUT MANUAL           |');
      writeln('+----------------------------------------------------------------------+');
      writeln('No   N I M     N A M A         HADIR     UTS     UAS     NA     INDEKS  ');
      for i:= 1 to N do begin
         gotoxy(2,i+4); write(i);
         gotoxy(6,i+4); write(arf_tbl1[i].nim);
         gotoxy(16,i+4); write(arf_tbl1[i].NAMA);
         gotoxy(32,i+4); write(arf_tbl1[i].Kehadiran/16*100:0:2,'%');
         gotoxy(42,i+4); write(arf_tbl1[i].UTS);
         gotoxy(50,i+4); write(arf_tbl1[i].UAS);
         gotoxy(58,i+4); write(arf_tbl1[i].NA:0:0);
         gotoxy(66,i+4); write(arf_tbl1[i].Indeks);
      end;
      writeln;
      writeln('+----------------------------------------------------------------------+');
      writeln('Rata-Rata NA = ',lRR:2:0,'   NIlai NA Tertinggi = ',lmax:2:0,'   Nilai NA Terkecil = ',lmin:2:0);
      writeln('+----------------------------------------------------------------------+');
      readln;
   end;

   {---^_^---Realisasi arf_otomatis---^_^---}
   Procedure arf_otomatis(var arf_tbl2:arf_input2);
   {---^_^---I.S: arf_tbl2 sebuah Tabel Record Input Otomatis yang diisi secara random---^_^---}
   {---^_^---F.S: arf_tbl2 berisi data hasil input Random Nim,Nama,kehadiran,UTS,UAS---^_^---}
   var  i:integer;

   begin
      clrscr;
      for i:= 1 to N do begin
         writeln('^----------------^_^-----------------^');
         Writeln('|     INPUT DATA NILAI OTOMATIS      |');
         writeln('+------------------------------------+');
         writeln('|  Data ke-',i,'                         |');
         Begin
            writeln('+------------------------------------+');
            write('   NIM       =');
            arf_tbl2[i].Nim:=random(10)+48;
            arf_tbl2[i].Nim2:=random(10)+48;
            arf_tbl2[i].Nim3:=random(10)+48;
            arf_tbl2[i].Nim4:=random(10)+48;
            arf_tbl2[i].Nim5:=random(10)+48;
            arf_tbl2[i].Nim6:=random(10)+48;
            arf_tbl2[i].Nim7:=random(10)+48;
            arf_tbl2[i].Nim8:=random(10)+48;
            write(chr(arf_tbl2[i].Nim),chr(arf_tbl2[i].nim2),chr(arf_tbl2[i].nim3),chr(arf_tbl2[i].nim4),chr(arf_tbl2[i].nim5),chr(arf_tbl2[i].nim6),chr(arf_tbl2[i].nim7),chr(arf_tbl2[i].nim8));
            writeln;
         end;
         begin
            writeln('+------------------------------------+');
            write('   NAMA      =');
            arf_tbl2[i].Nama:=random(25)+65;
            write(chr(arf_tbl2[i].Nama));
             arf_tbl2[i].Nama1:=random(25)+65;
            write(chr(arf_tbl2[i].Nama1));
             arf_tbl2[i].Nama2:=random(25)+65;
            write(chr(arf_tbl2[i].Nama2));
             arf_tbl2[i].Nama3:=random(25)+65;
            write(chr(arf_tbl2[i].Nama3));
            writeln;
         end;
         Begin
            writeln('+------------------------------------+');
            write('   KEHADIRAN =');
            arf_tbl2[i].Kehadiran:=random(17);
            write(arf_tbl2[i].Kehadiran);
            writeln;
         end;
         Begin
            writeln('+------------------------------------+');
            write('   UTS       =');
            arf_tbl2[i].UTS:=random(101);
            write(arf_tbl2[i].UTS);
            writeln;
          end;
          Begin
             writeln('+------------------------------------+');
             write('   UAS       =');
             arf_tbl2[i].UAS:=random(101);
             write(arf_tbl2[i].UAS);
             writeln;
          end;
          writeln('+------------------------------------+');
          readln;
          clrscr;
      end;
   end;
   {---^_^---Realisasi arf_hotomatis---^_^---}
   Procedure arf_hotomatis(var arf_tbl2:arf_input2);
   {---^_^---I.S: arf_tbl2 Tabel Record Terisi Nilai Kehadiran, UTS, UAS---^_^---}
   {---^_^---F.S: arf_tbl2 Terhitung Nilai NA, UTS, UAS---^_^---}
   var i:integer;
   begin
      for i:= 1 to N do begin
      if (arf_tbl2[i].kehadiran < 8) then 
         begin
            arf_tbl2[i].NA:=0;
         end else
         begin
         arf_tbl2[i].NA:=0.40*arf_tbl2[i].UTS+0.60*arf_tbl2[i].UAS;
         end;
      end;
   end;
   {---^_^---Realisasi arf_iotomatis---^_^---}
   Procedure arf_iotomatis(var arf_tbl2:arf_input2);
   {---^_^---I.S: arf_tbl2 Tabel Record Terisi Nilai Index Angka---^_^---}
   {---^_^---F.S: arf_tbl2 Terhitung Nilai Index A,B,C,D,E---^_^---}
   var i:integer;
   begin
      for i:= 1 to n do begin
         if (arf_tbl2[i].NA >=85) then
         begin
            arf_tbl2[i].Indeks:='A'
         end ELSE
         if (arf_tbl2[i].NA  < 85)and(arf_tbl2[i].NA  >=70) then
         begin
            arf_tbl2[i].indeks:='B'
         end else
         if (arf_tbl2[i].NA  < 70)and(arf_tbl2[i].NA  >=55) then
         begin
            arf_tbl2[i].indeks:='C'
         end else
         if (arf_tbl2[i].NA  < 55)and(arf_tbl2[i].NA  >=40) then
         begin
            arf_tbl2[i].indeks:='D'
         end else
         if (arf_tbl2[i].NA  < 40) and (arf_tbl2[i].NA >= 0 )then
         begin
            arf_tbl2[i].indeks:='E';
         end;
      end;
   end;
   {---^_^---Realisasi arf_rata_otomatis---^_^---}
   Function arf_rata_otomatis (arf_tbl2:arf_input2):real;
   {---^_^---I.S: arf_tbl2 Yang Sudah Terisi Na---^_^---}
   {---^_^---F.S: Hasil darijml/n---^_^---}
   var i:integer;
       jml,RR:real;
   begin
     arf_hotomatis(arf_tbl2);
     jml:=0;
      for i:=0 to N do begin
         jml:=jml + arf_tbl2[i+1].NA;
      end;
      RR:=(jml)/N;
      arf_rata_otomatis:=RR;
   end;
   {---^_^---Realisasi arf_nmin_otomatis---^_^---}
   Function arf_nmin_otomatis (arf_tbl2:arf_input2):real;
   {---^_^---I.S: arf_tbl2 Yang Sudah Terisi Na---^_^---}
   {---^_^---F.S: Sebuah Angka NA Terkecil Dari arf_tbl2---^_^---}
   var i:integer;
       min:real;
   begin
     arf_hotomatis(arf_tbl2);
     min:=101;
      for i:= 1 to N do begin
         if arf_tbl2[i].NA<min then begin
                                  min:=arf_tbl2[i].NA;
                               end;
      arf_nmin_otomatis:=min;
      end;
   end;
   {---^_^---Realisasi arf_nmax_otomatis---^_^---}
   Function arf_nmax_otomatis (arf_tbl2:arf_input2):real;
   {---^_^---I.S: arf_tbl2 Yang Sudah Terisi Na---^_^---}
   {---^_^---F.S: Sebuah Angka NA Terbesar Dari arf_tbl2---^_^---}
   var i:integer;
       max:real;
   begin
     arf_hotomatis(arf_tbl2);
     max:=0;
      for i:= 1 to N do begin
         if arf_tbl2[i].NA>max then begin
                                  max:=arf_tbl2[i].NA;
                               end;
      arf_nmax_otomatis:=max;
      end;
   end;
   {---^_^---Realisasi arf_tbl_otomatis---^_^---}
   Procedure arf_tbl_otomatis (arf_tbl2:arf_input2);
   {---^_^---I.S: arf_tbl2 Sebuah Tabel Record Input Otomatis---^_^---}
   {---^_^---F.S: Terhitung NA,Indeks,RR,Min,Max, Dan Tercetak No,NIM,Nama, UTS, UAS, Kehadiran---^_^---}
   var i : integer;
       lRR, lMax, lMin:real;
   begin
      arf_hotomatis(arf_tbl2);
      arf_iotomatis(arf_tbl2);
      lRR:=arf_rata_otomatis(arf_tbl2);
      lmax:=arf_nmax_otomatis(arf_tbl2);
      lmin:=arf_nmin_otomatis(arf_tbl2);
      clrscr;
      writeln('^----------------------------------^_^---------------------------------^');
      writeln('|          LAPORAN PENILAIAN MATA KULIAH HASIL INPUT OTOMATIS          |');
      writeln('+----------------------------------------------------------------------+');
      writeln('No   N I M     N A M A         HADIR     UTS     UAS     NA     INDEKS  ');
      for i:= 1 to N do begin
         gotoxy(2,i+4); write(i);
         gotoxy(6,i+4); write(chr(arf_tbl2[i].Nim),chr(arf_tbl2[i].nim2),chr(arf_tbl2[i].nim3),chr(arf_tbl2[i].nim4),chr(arf_tbl2[i].nim5),chr(arf_tbl2[i].nim6),chr(arf_tbl2[i].nim7),chr(arf_tbl2[i].nim8));
         gotoxy(16,i+4); write(chr(arf_tbl2[i].NAMA),chr(arf_tbl2[i].NAMA1),chr(arf_tbl2[i].NAMA2),chr(arf_tbl2[i].NAMA3));
         gotoxy(32,i+4); write(arf_tbl2[i].Kehadiran/16*100:0:2,'%');
         gotoxy(42,i+4); write(arf_tbl2[i].UTS);
         gotoxy(50,i+4); write(arf_tbl2[i].UAS);
         gotoxy(58,i+4); write(arf_tbl2[i].NA:0:0);
         gotoxy(66,i+4); write(arf_tbl2[i].Indeks);
      end;
      writeln;
      writeln('+----------------------------------------------------------------------+');
      writeln('Rata-Rata NA = ',lRR:2:0,'   NIlai NA Tertinggi = ',lmax:2:0,'   Nilai NA Terkecil = ',lmin:2:0);
      writeln('+----------------------------------------------------------------------+');
      readln;
   end;
   {---^_^---Realisasi openteks---^_^---}
    procedure openteks(var dt : datateks; namateks : string);
      {---^_^---I.S: dt dan namateks Terisi---^_^---}
      {---^_^---F.S: dt Terbuka Dengan Nama namateks---^_^---}
    begin
        Assign(dt,namateks);
        {$I-} { non-aktifkan Compiler Pascal }
        Reset(dt); { mengambil variabel file IOResult }
        {$I+} { aktifkan Compiler Pascal }
        If (IOResult <> 0) Then { file belum siap, file tidak ada }
        Rewrite(dt);
    end; 
   {---^_^---Realisasi input_data---^_^---}
    procedure input_data( var dt : datateks; var nilai : arf_input3);
      {---^_^---I.S: dt dan nilai Terisi---^_^---}
      {---^_^---F.S: Nilai Dari dt Diinput Ke nilai---^_^---}
    var i : integer;
    begin
        clrscr;
        for i := 1 to n do
        begin
            gotoxy(1,1); writeln('^----------------^_^-----------------^');
            gotoxy(1,2); Writeln('|     INPUT DATA DARI FILE TEXT      |');
            gotoxy(1,3); writeln('+------------------------------------+');
            gotoxy(1,4); Writeln('   Data Ke-',i);
            gotoxy(1,5); writeln('+------------------------------------+');
            gotoxy(1,6); Writeln('|  NIM        =                      |');
            gotoxy(1,7); Writeln('|  Nama       =                      |');
            gotoxy(1,8); Writeln('|  Kehadiran  =                      |');
            gotoxy(1,9); Writeln('|  UTS        =                      |');
            gotoxy(1,10); Writeln('|  UAS        =                      |');
            gotoxy(1,11); writeln('+------------------------------------+');
            textcolor(white);
            Gotoxy(16,6); readln(dt,nilai[i].NIM);delay(500);
            Gotoxy(16,7); readln(dt,nilai[i].Nama);delay(500);
            Gotoxy(16,8); readln(dt,nilai[i].Kehadiran);delay(500);
            Gotoxy(16,9); readln(dt,nilai[i].UTS);delay(500);
            Gotoxy(16,10); readln(dt,nilai[i].UAS);delay(500);
        end;
    end; 

   {---^_^--- REALISASI arf_hmhs---^_^---}
   Procedure arf_fhitung(var arf_tbl3:arf_input3);
   {---^_^---I.S: arf_tbl3 Tabel Record Terisi Nilai Kehadiran, UTS, UAS---^_^---}
   {---^_^---F.S: arf_tbl3 Terisi Nilai Hasil Kehadiran,UTS,UAS, NA---^_^---}
   var i:integer;
   begin
      for i:= 1 to N do begin
         if (arf_tbl3[i].kehadiran < 8) then 
         begin
            arf_tbl3[i].NA:=0;
         end else
         begin
         arf_tbl3[i].NA:=0.40*arf_tbl3[i].UTS+0.60*arf_tbl3[i].UAS;
         end;
      end;
   end;
   {---^_^--- Realisasi arf_imhs---^_^---}
   Procedure arf_indexf(var arf_tbl3:arf_input3);
   {---^_^---I.S: arf_tbl3 Record Terisi Nilai Index Berupa Angka---^_^---}
   {---^_^---F.S: arf_tbl3 Hasil Index Terisi Nilai A,B,C,D,E---^_^---}
   var i:integer;
   begin
      for i:= 1 to n do begin
         if (arf_tbl3[i].NA >=85) then
         begin
            arf_tbl3[i].Indeks:='A'
         end ELSE
         if (arf_tbl3[i].NA  < 85)and(arf_tbl3[i].NA  >=70) then
         begin
            arf_tbl3[i].indeks:='B'
         end else
         if (arf_tbl3[i].NA  < 70)and(arf_tbl3[i].NA  >=55) then
         begin
            arf_tbl3[i].indeks:='C'
         end else
         if (arf_tbl3[i].NA  < 55)and(arf_tbl3[i].NA  >=40) then
         begin
            arf_tbl3[i].indeks:='D'
         end else
         if (arf_tbl3[i].NA  < 40) and (arf_tbl3[i].NA >= 0 )then
         begin
            arf_tbl3[i].indeks:='E';
         end;
      end;
   end;
   Function arf_frata (arf_tbl3:arf_input3):real;
   {---^_^---I.S: arf_tbl3 Yang Sudah Terisi Na---^_^---}
   {---^_^---F.S: Hasil darijml/n---^_^---}
   var i:integer;
       jml,RR:real;
   begin
     arf_fhitung(arf_tbl3);
     jml:=0;
      for i:=0 to n do begin
         jml:=jml + arf_tbl3[i+1].NA;
      end;
      RR:=(jml)/n;
      arf_frata:=RR;
   end;
   {---^_^--- Realisasi arf_nmin---^_^---}
   Function arf_fmin (arf_tbl3:arf_input3):real;
   {---^_^---I.S: arf_tbl3 Yang Sudah Terisi Na---^_^---}
   {---^_^---F.S: Sebuah Angka NA Terkecil Dari arf_tbl3---^_^---}
   var i:integer;
       min:real;
   begin
     arf_fhitung(arf_tbl3);
     min:=101;
      for i:= 1 to N do begin
         if arf_tbl3[i].NA<min then begin
                                  min:=arf_tbl3[i].NA;
                               end;
      arf_fmin:=min;
      end;
   end;
   {---^_^---Realisasi arf_nmax---^_^---}
   Function arf_fmax (arf_tbl3:arf_input3):real;
   {---^_^---I.S: arf_tbl3 Yang Sudah Terisi Na---^_^---}
   {---^_^---F.S: Sebuah Angka NA Terbesar Dari arf_tbl3---^_^---}
   var i:integer;
       max:real;
   begin
     arf_fhitung(arf_tbl3);
     max:=0;
      for i:= 1 to N do begin
         if arf_tbl3[i].NA>max then begin
                                  max:=arf_tbl3[i].NA;
                               end;
      arf_fmax:=max;
      end;
   end;
    {---^_^---Realisasi arf_tbl_txt---^_^---}
    procedure arf_tbl_txt(nilai : arf_input3);
      {---^_^---I.S: Nilai Tabel Terisi Nilai Kehadiran, UTS, UAS, NA---^_^---}
      {---^_^---F.S: Tercetak dilayar Nilai Kehadiran, UTS, UAS, NA, NA Terkecil, NA Terbesar, Dan Rata-rata NA ---^_^---}
    var nomor: integer; 
       RRF,fmin,fmax:real;
    begin
        arf_fhitung(arf_tbl3);
        arf_indexf(arf_tbl3);
        RRF:=arf_frata(arf_tbl3);
        fmax:=arf_fmax(arf_tbl3);
        fmin:=arf_fmin(arf_tbl3);
        clrscr;
        gotoxy(1,1); writeln('^----------------------------------^_^---------------------------------^');
        gotoxy(1,2); writeln('|          LAPORAN PENILAIAN MATA KULIAH HASIL INPUT FILE TEXT         |');
        gotoxy(1,3); writeln('+----------------------------------------------------------------------+');
        gotoxy(1,4); writeln('No   N I M     N A M A         HADIR     UTS     UAS     NA     INDEKS  ');
          for nomor:= 1 to N do begin
            gotoxy(2,nomor+4); write(nomor);
            gotoxy(6,nomor+4); writeln(nilai[nomor].Nim);
            gotoxy(16,nomor+4); Writeln(nilai[nomor].Nama);
            gotoxy(32,nomor+4); Writeln(nilai[nomor].Kehadiran/16*100:2:0,'%');
            gotoxy(42,nomor+4); Writeln(nilai[nomor].UTS);
            gotoxy(50,nomor+4); Writeln(nilai[nomor].UAS);
            gotoxy(58,nomor+4); Writeln(arf_tbl3[nomor].NA:2:0);
            gotoxy(66,nomor+4); Writeln(arf_tbl3[nomor].Indeks); 
         end;   
      writeln;
      writeln('+----------------------------------------------------------------------+');
      writeln('Rata-Rata NA = ',RRF:2:0,'   NIlai NA Tertinggi = ',fmax:2:0,'   Nilai NA Terkecil = ',fmin:2:0);
      writeln('+----------------------------------------------------------------------+');
    end; 
end.
