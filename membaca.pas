Program membaca; 
Uses crt; 
Var var_teks:TEXT; 
Pesan:string; 
Begin 
Clrscr; 
Assign(var_teks,'Hallo.txt');
Reset(var_teks); 
While not eof (var_teks) do 
Begin 
Readln( var_teks, pesan ); 
Writeln (pesan); 
End; 
Close(var_teks); 
End.    