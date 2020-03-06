rand("seed",219) % böyle başlayalım ki, sizde de, burada da aynı/ % sayılar üretilsin.           
xy = rand([10,2])
t = linspace(0,360,1000);
xx = 0.5*cos(t);
yy = 0.5*sin(t);
plot(xy(:,1),xy(:,2),"xb",0,0,"r.",xx,yy,"k.")
axis([-0.5 0.5 -0.5 0.5])