[x, fs] = wavread('Chrom1.5.wav');
x = x(:,1);
%fs = 44100;
%x = zeros(2*fs,1);
%for i=1:2*fs
   % if (i<fs)
     %   x(i) = cos(2*pi*1000*i/fs);
    %else
      %  x(i) = cos(2*pi*2000*i/fs);
  %  end
%end
%sound(x, fs);
wlen = 0.05*fs; % Fenetre de 50ms
W = makeW(x, fs, wlen, wlen/4,46);

imagesc(W);
axis xy;
title('Original H');
