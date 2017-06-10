%Stochastic volatility model. Generates paths for stock prices SPaths under
%stochastic volatility; %k is the rate of mean reversion;
%phi is the long run variance;sigma=Vo is the spot
%variance (i.e. sigma�2);
%rho is the correlation coefficient; phi is the long run
%mean variance;
%sigma1 is the volatility of variance or volatility of
%volatility.; r is the drift parameter;q=dividend yield;
%Note T must be expressed in days (i.e. 30/365,60/365,
%75/365,etc. . .);
function [SPaths,Vt]=StochJumpPath(so,r,q,rho,sigma, sigma1,k,phi,lam_j,mean_j,vol_j,T,NSteps,Rep)
dt=T/NSteps;Vo=sigma;
y=k*sigma1; k1=k+y; phi1=(k*phi)/(k+y); %we have assumed the same specification as in CERRATO(2009).
RandMat1=rand(Rep,NSteps);
RandMat2=rand(Rep,NSteps);
RandMat1=norminv(RandMat1);
RandMat2=norminv(RandMat2);
RandMat3=rho*RandMat1+sqrt(1-rho*rho)*RandMat2;
            for i=1:Rep
      for j=2:(NSteps+1)
            V(i,1)=Vo;
            SPP(i,1)=so;
      end
    end
    for i=1:Rep %Euler schemes with jump processes
        for j=2:(NSteps+1)
            J=0;
            if lam_j ~= 0
                Nt = poissrnd(lam_j*dt);
                if Nt > 0
                    for t=1:Nt
                        J = J + normrnd(mean_j - vol_j^2/2,vol_j);
                    end
                end
            end
    V(i,j)=V(i,(j-1))+k1*(phi1-V(i,(j-1)))*dt+(sigma1*(sqrt(V(i,(j-1))))*sqrt(dt)*RandMat1(i,(j-1)));
    V1=abs(V); %prevents negative volatilities
    SPP(i,j)=SPP(i,(j-1))+((r+q).*SPP(i,(j-1))*dt+(sqrt(V1(i,(j-1))))*SPP(i,(j-1))*sqrt(dt)*(RandMat3(i,(j-1))))+J;
            j=j+1;
        end
    end
SPaths=SPP;
Vt=V1;