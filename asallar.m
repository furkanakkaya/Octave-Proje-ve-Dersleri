asallar = [2]; % bulduğumuz asalları bu listenin içine koyacağız
for sayi = 3:10
    % bu bizim asallığını kontrol etmek istediğimiz sayı
    disp("Asallığını kontrol ettiğimiz sayı:")
    sayi
    disp("") % Bir boş satır ekleyelim
    for bolen = asallar
        % asallar listesinin dinamik bir liste olduğunu
        % yani mesela 4'e gelindiğinde [2 3];
        % 9'a gelindiğinde [2 3 5 7] olduğuna dikkat edin!
        bolen
        kalan = mod(sayi,bolen)
        if(kalan == 0)
            % Bu sayı asal olamaz.
            disp("Sayı asal değil! - döngüden burada çıkıyorum.")
            disp("") % Bir boş satır ekleyelim
            break; % "bolen = 2:sayi-1" döngüsünü kırıyoruz
        endif
        disp("") % Bir boş satır ekleyelim
    endfor
    
    % Buraya iki yoldan gelmiş olabiliriz:
    %   ya sayi kalansız bolundu ve döngü break ile kırıldı
    %     (bu durumda kalan == 0)
    %   ya da hiçbir bolen kalansız bölemedi ve 2:sayi-1 döngüsü
    %     normal yoldan sona erdi (bu durumda kalan != 0)
    if(kalan != 0)
        disp("Sayı asal!")
        asallar = [asallar sayi];
    endif
    disp("-------------------")
endfor
asallar