clear
close all
%========光学传递函数转换为点扩散函数otf2psf====
PSF = fspecial('gaussian',13,1);
OTF = psf2otf(PSF);
PSF2 = otf2psf(OTF);

subplot(1,3,1)
surf(abs(PSF))
title('原始|PSF|')

subplot(1,3,2)
surf(abs(OTF))
title('|OTF|')

subplot(1,3,3)
surf(abs(PSF2))
title('转换回|PSF|')