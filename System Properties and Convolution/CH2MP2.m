% CH2MP1.m : Chapter 2, MATLAB Program 1
% Script M-file determines characteristic roots of op-amp circuit.
% Set component values:
R = [1e4, 1e4, 1e4];
C = [1e-6, 1e-6];
% Determine coefficients for characteristic equation:
A = [1, (1/R(1)+1/R(2)+1/R(3))/C(2), 1/(R(1)*R(2)*C(1)*C(2))];
% Determine characteristic roots:
lambda = roots(A);
%38 and 61
%generate characteristic polynomial specific by values of lambda
poly(lambda);

figure;
t=0:0.0005:0.1; 
u=@(t) 1.0* (t>=0);
%creating impulse response calculated using exponential terms from
%characteristic roots multiplied with step function u(t)
%The coefficients C(1) & C(2) scale the contribution of each root
%exponential terms represent oscillatory behavior
h = @(t) (C(1).* exp(lambda(1).*t) + C(2).* exp(lambda(2).*t)).*(u(t));
plot(t,h(t));


