PROGRAM nama_program;
USES CRT;
Type    ElemenNilai =  Record {struktur data record nilai matakuliah}
                            Nim : String[8];
                            Nama : String[30];
                            Khdr : Integer;
                            UTS : Integer;
                            UAS : Integer;
                            NA : Real;
                            Idx : String[10];
                        End;
        TabelNilai = Array[1..15] of ElemenNilai;
        FileText = TEXT;

Var Tabel1,Tabel2, Tabel3   : TabelNilai;
    gFT                      : FileText;
    n : integer;
    p : char;


    procedure awal;
    begin
        write('masukan data : ');readln(n);
    end;

    procedure open_file(var FT : FileText; namFile : string);
    begin
        Assign(FT,namFile);
        {$I-} { non-aktifkan Compiler Pascal }
        Reset(FT); { mengambil variabel file IOResult }
        {$I+} { aktifkan Compiler Pascal }
        If (IOResult <> 0) Then { file belum siap, file tidak ada }
        Rewrite(FT);
    end;

    procedure input( var FT : FileText; var mhs : TabelNilai);
    var i : integer;
    begin
        for i := 1 to n do
        begin
            Gotoxy(50,13); Writeln('   Data Ke-',i);
            Gotoxy(50,14); Writeln('+=========================+');
            Gotoxy(50,15); Writeln('|  NIM        =           |');
            Gotoxy(50,16); Writeln('|  Nama       =           |');
            Gotoxy(50,17); Writeln('|  Kehadiran  =           |');
            Gotoxy(50,18); Writeln('|  UTS        =           |');
            Gotoxy(50,19); Writeln('|  UAS        =           |');
            Gotoxy(50,20); writeln('+=========================+');
            textcolor(white);
            Gotoxy(68,15); readln(FT,mhs[i].NIM);delay(500);
            Gotoxy(68,16); readln(FT,mhs[i].Nama);delay(500);
            Gotoxy(68,17); readln(FT,mhs[i].Khdr);delay(500);
            Gotoxy(68,18); readln(FT,mhs[i].UTS);delay(500);
            Gotoxy(68,19); readln(FT,mhs[i].UAS);delay(500);
        end;
    end;

    procedure hitung(mhs : TabelNilai; rr : real);
    var i : integer; rata : real;
    begin
        rr := 0;
        for i := 1 to n do
        begin
        rr := rr + mhs[i].UTS;
        rata := rr/n;
        GOTOXY(2,1);WRITE(rata:2:0);
        
        end;
    end;

    procedure laporan(mhs : TabelNilai);
    var i : integer;rv : real;
    begin
        for i := 1 to n do
        begin
            hitung(mhs,rv);
            IF mhs[i].Khdr >= 8 THEN   { jika kehadiran >= 8 ... }
            BEGIN
                mhs[i].NA := 40/100*mhs[i].UTS+60/100*mhs[i].UAS { maka NA di Proses (NA = 40%UTS+60%UAS) }
            END ELSE
            IF mhs[i].Khdr < 8 THEN    { jika kehadiran < 8 ... }
            BEGIN
                mhs[i].NA := 0;        { maka NA bernilai 0 }
            END;
            IF (mhs[i].NA >= 85) AND (mhs[i].NA <= 100) THEN { jika NA >= 85 dan <= 100... }
                mhs[i].Idx := 'A';                          { maka indeks = A }
                IF (mhs[i].NA >= 70) AND (mhs[i].NA < 85) THEN   { jika NA >= 70 dan < 85... }
                    mhs[i].Idx := 'B';                          { makaindeks = B }
                    IF (mhs[i].NA >= 55) AND (mhs[i].NA < 70) THEN   { jika NA >= 55 dan < 70... }
                        mhs[i].Idx := 'C';                          { maka indeks = C }
                        IF (mhs[i].NA >= 40) AND (mhs[i].NA < 55) THEN   { jika NA >= 40 dan < 55... }
                            mhs[i].Idx := 'D';                          { maka indeks = D  }
                            IF (mhs[i].NA > 0) AND (mhs[i].NA < 40) THEN     { jika NA > 0 dan < 40... }
                                mhs[i].Idx := 'E';                          { maka indeks = i }
                                IF (mhs[i].NA = 0) THEN      { jika NA = 0...        }
                                    mhs[i].Idx := 'HADIR-';   { maka indeks = HADIR-  }

            GOTOXY(2,2+i); writeln(mhs[i].Nim);
            GOTOXY(15,2+i); Writeln(mhs[i].Nama);
            GOTOXY(35,2+i); Writeln(mhs[i].Khdr);
            GOTOXY(40,2+i); Writeln(mhs[i].UTS);
            GOTOXY(45,2+i); Writeln(mhs[i].UAS);
            GOTOXY(50,2+i); Writeln(mhs[i].NA:2:0);
            GOTOXY(55,2+i); Writeln(mhs[i].Idx);
        end;
    end;

begin
clrscr;
    awal;
    clrscr;
    repeat
        clrscr;
        writeln(' pilih nomor ');
        writeln(' pilih 1 / 2 '); 
        p := readkey;
        clrscr;
        case p of
            '1' :   begin
                        open_file(gFT,'C:\Users\arifn\OneDrive\Documents\BSD\Materi Kuliah\algo2\uas\hallo.txt');
                        input(gFT,Tabel1);
                    end;
            '2' :   begin
                        laporan(Tabel1);
                        readln;
                    end;
        end;
    until (p = '0');

readln;
END.
