alar = [7   -9    3   -7    8   5    6    -2     2    5    0]
tekler = [];
ciftler = [];
for a = alar
    if(mod(a,2) == 0)
        % a, 2 ile bölündüğünde kalanı sıfır oluyor (mod)
        % o zaman çift demektir
        ciftler = [ciftler a];
    else
        tekler = [tekler a];
    endif
endfor
tekler
ciftler