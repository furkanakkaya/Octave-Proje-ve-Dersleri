% FİZ219 - Bilgisayar Programlama I | 23/11/2019
% Monte Carlo yöntemi ile Pi sayısının kestirimi
%
% Emre S. Tasci emre.tasci@hacettepe.edu.tr

% Şu ana kadar yaptığımız her şeyi silelim
% (Octave'ı yeni açmış gibi olalım):
clear;

% Sonuçların buradakilerle birebir uyuşması açısından:
rand("seed",219) 

% Toplam üretilen rastgele nokta sayısı -- bunu ne kadar
% yüksek yaparsanız, sonuç pi'ye o kadar yakınsayacaktır
n = 1000;

% Noktaları üretelim:
xy = rand([n 2]) - 0.5;

% Orijine olan mesafelerini hesaplatalım:
mesafeler = norm(xy,"rows");

% mesafeler'i xy'ye 3. sütun olarak ekleyelim:
xy = [xy mesafeler];

% mesafelerin 0.5'e eşit veya ondan küçük olduğu satırları bulalım:
dairenin_icindekiler_satirlar_filtresi = xy(:,3)<=0.5;
dairenin_icindekiler_satirlar = [1:n](dairenin_icindekiler_satirlar_filtresi);
dairenin_icindekiler = xy(dairenin_icindekiler_satirlar,:);

dairenin_disindakiler = xy([1:n](not(dairenin_icindekiler_satirlar_filtresi)),:);

% pi'yi hesaplayalım:
icerideki_nokta_sayisi = rows(dairenin_icindekiler)
disaridaki_nokta_sayisi = rows(dairenin_disindakiler)
toplam_nokta_sayisi = n
disp("------------------------------")
pi_yaklasik = 4 * icerideki_nokta_sayisi / n

% Grafiği çizdirelim:

% Dairemiz:
t = linspace(0,360,1000);
xx = 0.5 * cosd(t);
yy = 0.5 * sind(t);

plot(0,0,".r",... % orijin
xx,yy,"k.",... % daire
dairenin_icindekiler(:,1),dairenin_icindekiler(:,2),"or",... % dairenin içindeki noktalar
dairenin_disindakiler(:,1),dairenin_disindakiler(:,2),"sb") % dairenin dışındaki noktalar

axis([-0.5 0.5 -0.5 0.5])


% -------------------------------------------------------
% rastgele tohumu : 219 için sonuçlar özet:
%       n    #iç      #dış       #pi
%      10      9         1       3.6000000
%     100     80        20       3.2000000
%    1000    784       216       3.1360000
%   10000   7863      2137       3.1452000
%  100000  78649     21351       3.1459600
% 1000000 785546    214454       3.1421840