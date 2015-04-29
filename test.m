function fft = somefft(n,t)
  R = 8000; C = 1e-7; T = 0.005;
  #R = 1; C = .1; T = 1;
  fft = [];
  for p = (0:.0001:t)
    Vo = 0;
    for k = (-n:n)
      if ( k == 0)
        Vo += ((exp((i*2*pi*k*p)/T))/2)/(1+i*2*pi*(k/T)*R*C);
        continue;
      endif
      if ( mod(k,2) == 0)
        continue;
      endif
      Vo += ((exp((i*2*pi*k*p)/T))/(i*pi*k))/(1+i*2*pi*(k/T)*R*C);
    endfor
    fft = [fft, Vo];
  endfor
endfunction
