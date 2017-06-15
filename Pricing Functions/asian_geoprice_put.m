function [option_value] = asian_geoprice_put(so,K,r,R,q,rho,sigma, sigma1,k,phi,lam_j,mean_j,vol_j,T,NSteps,Rep)
x = StochJumpPath(so,r,q,rho,sigma, sigma1,k,phi,lam_j,mean_j,vol_j,T,NSteps,Rep);
x = x(:,2:NSteps);
geo_mean = geomean(x,2);
geo_mean = geo_mean';
m = zeros(size(geo_mean));
index = 1;
for elm = geo_mean
    payoff = K - elm;
    if payoff > 0
        m(index) = payoff;
    end
    index = index + 1;
end
option_value = mean(m)*exp(-R*T);