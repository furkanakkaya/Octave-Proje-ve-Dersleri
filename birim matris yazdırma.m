m = zeros(5,5) % bütün elemanları 0 olan, 5x5 bir matris oluşturur.
for satir=1:5
    for sutun = 1:5
        m(satir,sutun) = 1;
        if(satir == sutun)
            break;
            % şu anda sutun=1:5 döngüsünün içinde olduğumuzdan
            % break ile sadece bu bloktan çıkarız.
        endif
    endfor
endfor
m