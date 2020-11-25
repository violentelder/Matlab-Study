clear
close all
%========Í¼ÏñµÄ¾µÏñ±ä»»========
i = imread('woodstatue.jpg');
i = rgb2gray(i);
figure
subplot(2,2,1)
imshow(i)
title('Ô­Ê¼Í¼Ïñ')

i = double(i);
h = size(i);
i2(1:h(1),1:h(2)) = i(h(1):-1:1, 1:h(2));
subplot(2,2,2)
imshow(uint8(i2))
title('´¹Ö±¾µÏñ±ä»»')

i3(1:h(1),1:h(2)) = i(1:h(1), h(2):-1:1);
subplot(2,2,3)
imshow(uint8(i3))
title('Ë®Æ½¾µÏñ±ä»»')

i4(1:h(1),1:h(2)) = i(h(1) : -1 : 1, h(2):-1:1);
subplot(2,2,4)
imshow(uint8(i4))
title('¶Ô½Ç¾µÏñ')