% Part A3 for x2(t)
n = (-10:10);
D_n(n==0) = 0.5;
D_n(n~=0) = sin(pi/2 .* n(n~=0))./(pi .* n(n~=0));
subplot(1,2,1);
stem(n,abs(D_n),'.k');
xlabel('n');
ylabel('|D_n|');
title('The Magnitude of D_n for x2(t)')
ylim([0,0.75]);
subplot(1,2,2);
stem(n,angle(D_n),'.k');
xlabel('n');
ylabel('The angle D_n (radians)');
title('The Phase of D_n for x2(t)')
ylim([0,5]);
