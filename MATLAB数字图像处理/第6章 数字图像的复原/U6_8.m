clear
close all
%========��ѧ���ݺ���ת��Ϊ����ɢ����otf2psf====
PSF = fspecial('gaussian',13,1);
OTF = psf2otf(PSF);
PSF2 = otf2psf(OTF);

subplot(1,3,1)
surf(abs(PSF))
title('ԭʼ|PSF|')

subplot(1,3,2)
surf(abs(OTF))
title('|OTF|')

subplot(1,3,3)
surf(abs(PSF2))
title('ת����|PSF|')