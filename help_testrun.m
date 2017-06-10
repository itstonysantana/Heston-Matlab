%Stochastic volatility model with jump processes. 
%Generates paths for stock prices SPaths under stochastic volatility; 
%K is the strike price; 
%k is the rate of mean reversion; R is the risk-free rate;
%phi is the long run variance;sigma=Vo is the spot
%variance (i.e. sigmaˆ2);
%rho is the correlation coefficient; phi is the long run
%mean variance;
%sigma1 is the volatility of variance or volatility of
%volatility; r is the drift parameter;q=dividend yield;
%lam_j is the jump frequency; mean_j is the jump mean parameter;
%vol_j is the jump volatility parameter
%Note T must be expressed in days (i.e. 30/365,60/365,
%75/365,etc. . .);
a = asian_geoprice_call(15, 20, 0, 0, 0, -0.8, 0.16, 5, 5, 0.16, 0.01028, 0.00828, 0.0079689, 90/365, 10, 100);
b = asian_geostrike_call(15, 20, 0, 0, 0, -0.8, 0.16, 5, 5, 0.16, 0.01028, 0.00828, 0.0079689, 90/365, 10, 100);
c = asian_geoprice_put(15, 20, 0, 0, 0, -0.8, 0.16, 5, 5, 0.16, 0.01028, 0.00828, 0.0079689, 90/365, 10, 100);
d = asian_geostrike_put(15, 20, 0, 0, 0, -0.8, 0.16, 5, 5, 0.16, 0.01028, 0.00828, 0.0079689, 90/365, 10, 100);