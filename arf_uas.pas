{---^_^---JUDUL---^_^---}
Program arf_uas;
{---^_^---INPUT : fPil Pilihan Char---^_^---}
{---^_^---PROSES: Modular, Pengulangan, Pemilihan---^_^---}
{---^_^---OUTPUT: Memanggil Prosedur Dari mcoding Dan menu1---^_^---}
{---^_^---KAMUS DATA---^_^---}
{---^_^---Link Modul---^_^---}
Uses crt,mcoding,menu1;
{---^_^---Identifikasi Data skop GLOBAL---^_^---}
{---^_^---CONST // TIDAK ADA---^_^---}
Type pilihan=char;
var  fPil: Pilihan;
     arf_tbl1:arf_input1;
     arf_tbl2:arf_input2;
Begin    {---^_^---MEMBUAT MENU MEMANFAATKAN PROSEDUR DAN FUNGSI ---^_^---}
   fPil:='0';
   Repeat
      Menu(fPil);
      {---^_^---Proses pilihan---^_^---}
      Case fPil of
         '1' : Begin
                  arf_manual(arf_tbl1);
               End;
         '2' : Begin
                  arf_otomatis(arf_tbl2);
               End;
         '3' : Begin
                   openteks(odt,'C:\Users\arifn\OneDrive\Documents\BSD\Materi Kuliah\algo2\uas\hallo.txt');
                   input_data(odt,arf_tbl3);
               End;
         '4' : Begin
                  arf_tbl_manual(arf_tbl1);
               End;
         '5' : Begin
                  arf_tbl_otomatis(arf_tbl2);
               End;
         '6' : Begin
                  arf_tbl_txt(arf_tbl3);
                  readln;
               End;
         '0' : Begin
                  writeln('');
               End else
                Begin
                clrscr;
                gotoxy(5,5); writeln('KESALAHAN PILIHAN, PILIHAN TERSEDIA HANYA 0-6 SAJA!.');
                gotoxy(5,6); writeln('       TEKAN ENTER UNTUK KEMBALI KE MENU!.');
                readln;
               End; 
      End;{---^_^---CASE---^_^---}
   Until (fPil = '0');
   Clrscr; {---^_^---PESAN PENUTUP---^_^---}
   Gotoxy(1,13); writeln('+--------------^_^-------------SELESAI--------------^_^-------------+');
   readln;
end.