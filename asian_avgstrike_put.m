function [x] = asian_avgstrike_put(so,K,r,R,q,rho,sigma, sigma1,k,phi,lam_j,mean_j,vol_j,T,NSteps,Rep)
x = StochJumpPath(so,r,q,rho,sigma, sigma1,k,phi,lam_j,mean_j,vol_j,T,NSteps,Rep);
x = x(:,2:NSteps);
arith_mean = mean(x,2);
arith_mean = arith_mean';
m = zeros(size(arith_mean));
index = 1;
for elm = arith_mean
    payoff = elm - x(index,NSteps-1);
    if payoff > 0
        m(index) = payoff;
    end
    index = index + 1;
end
asian_call_value = mean(m)*exp(-R*T);
euro_value = call_heston_cf(mean(m), sigma, phi, k, sigma1, R, rho, T, K);
disp(asian_call_value)
disp(euro_value)