% Part A for A4  x1(t)
n = (-5:5);
D_n = 0.5.*(abs(n) == 3) + 0.25.*(abs(n) == 1);
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

% Part B for A4 x1(t)
n = (-20:20);
D_n = 0.5.*(abs(n) == 3) + 0.25.*(abs(n) == 1);
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

% Part C for A4 x1(t)
n = (-50:50);
D_n = 0.5.*(abs(n) == 3) + 0.25.*(abs(n) == 1);
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

% Part D for A4 x1(t)
n = (-500:500);
D_n = 0.5.*(abs(n) == 3) + 0.25.*(abs(n) == 1);
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