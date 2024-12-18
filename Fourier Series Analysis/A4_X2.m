% Part A for A4 x2(t)
n = (-5:5);
D_n = zeros(size(n));
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

% Part B for A4 x2(t)
n = (-20:20);
D_n = zeros(size(n));
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

% Part C for A4 x2(t)
n = (-50:50);
D_n = zeros(size(n));
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

% Part D for A4 x2(t)
n = (-500:500);
D_n = zeros(size(n));
D_n(n == 0) = 0.5;
D_n(n ~= 0) = sin(pi/2 .* n(n ~= 0)) ./ (pi .* n(n ~= 0));

% Increase figure size
figure('Position', [100, 100, 1200, 500]);

% Plot magnitude of D_n
subplot(1, 2, 1);
stem(n, abs(D_n), '.k', 'MarkerSize', 4); % Reduce marker size
xlim([-50, 50]); % Limit x-axis to a smaller range
xlabel('n');
ylabel('|D_n|');
title('The Magnitude of D_n for x2(t)');
ylim([0, 0.75]);

% Plot phase of D_n
subplot(1, 2, 2);
stem(n, angle(D_n), '.k', 'MarkerSize', 4); % Reduce marker size
xlim([-50, 50]); % Limit x-axis to a smaller range
xlabel('n');
ylabel('The angle D_n (radians)');
title('The Phase of D_n for x2(t)');
ylim([0, 5]);

