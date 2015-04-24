function fft = myfft(n,t)
  R = 1; C = 0.1; T = 1;
  fft = [];
  for p = (0:.001:1)
    F = 0;
    for k = (1:n)
      F += ( (exp((i * 2*pi*k*p)/T))/i*pi*k) / (1 + i*2*pi*(n/T)*R*C);
      #if (mod(n, 2) == 0)
      #  F += 1/(i*pi*k);
      #endif
    endfor
    fft = [fft, F];
  endfor
endfunction
