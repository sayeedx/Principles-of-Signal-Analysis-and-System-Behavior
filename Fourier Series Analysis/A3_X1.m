%Part A3 for x1(t)
n = [-3,-1,1,3];
D_n = [1/2, 1/4, 1/2, 1/4];
subplot(1,2,1);
stem(n,abs(D_n),'.k');
xlabel('n');
ylabel('|D_n|');
title('The Magnitude of D_n x1(t)')
ylim([0,1]);
subplot(1,2,2);
stem(n,angle(D_n),'.k');
xlabel('n');
ylabel('The angle D_n (radians)');
title('The Phase of D_n x1(t)');

