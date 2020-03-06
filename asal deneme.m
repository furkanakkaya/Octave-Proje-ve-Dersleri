asallar=[2];
for a=3:100
  for bolen= asallar
    if(mod(a,asallar)==0)
    break
  endif
endfor
if(mod(a,asallar)!=0)
  asallar=[asallar a];
endif
endfor

