function [x] = asian_avgstrike_call(so,K,r,R,q,rho,sigma, sigma1,k,phi,lam_j,mean_j,vol_j,T,NSteps,Rep)
x = StochJumpPath(so,r,q,rho,sigma, sigma1,k,phi,lam_j,mean_j,vol_j,T,NSteps,Rep);
x = x(:,2:NSteps);
arith_mean = mean(x,2);
arith_mean = arith_mean';
m = zeros(size(arith_mean));
index = 1;
for elm = arith_mean
    payoff = x(index,NSteps-1) - elm;
    if payoff > 0
        m(index) = payoff;
    end
    index = index + 1;
end
option_value = mean(m)*exp(-R*T);
disp(option_value)