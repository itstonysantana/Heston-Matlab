# Heston-Matlab

##### Pricing Asian Options with Monte Carlo and Stochastic Volatility With Jump Diffusion

One of the major drawbacks of the widely known Black-Scholes-Merton formula is its assumption of a constant variance. The Heston model seeks to remedy that issue by introducing the volatility as a stochastic process. 

This collection of functions prices Asian options using the Heston model with Monte Carlo methods, and with a jump-diffusion process implemented. It can price Asian calls and puts with arithmetic and geometric averages for the asset price and the strike price. This code operates from a modified version of Mario Cerrato's implementation of the Heston model in his book, '**The Mathematics of Derivatives Securities with Applications in Matlab**'.

I did not want to explicitly use any toolboxes for this, as the goal of this project was more to understand the methodology behind the Euler discretization scheme and how a jump process could be properly implemented and tested. My next goal will be to put the model to practical use, through model calibration and parameter estimation methods.

Refer to the [testing file](https://github.com/itstonysantana/Heston-Matlab/blob/master/help_testrun.m) for an explanation of the function inputs.


### Functions

* [asian_avgprice_call](https://github.com/itstonysantana/Heston-Matlab/blob/master/asian_avgprice_call.m)   -  Computes the price of an Asian average price call
* [asian_avgstrike_call](https://github.com/itstonysantana/Heston-Matlab/blob/master/asian_avgstrike_call.m)  -  Computes the price of an Asian average strike put
* [asian_avgprice_put](https://github.com/itstonysantana/Heston-Matlab/blob/master/asian_avgprice_put.m)    -  Computes the price of an Asian average price put
* [asian_avgstrike_put](https://github.com/itstonysantana/Heston-Matlab/blob/master/asian_avgstrike_put.m)   -  Computes the price of an Asian average strike put
* [asian_geoprice_call](https://github.com/itstonysantana/Heston-Matlab/blob/master/asian_geoprice_call.m)   -  Computes the price of an Asian geometric average price call
* [asian_geostrike_call](https://github.com/itstonysantana/Heston-Matlab/blob/master/asian_geostrike_call.m)  -  Computes the price of an Asian geometric average strike call
* [asian_geoprice_put](https://github.com/itstonysantana/Heston-Matlab/blob/master/asian_geoprice_put.m)    -  Computes the price of an Asian geometric average price put
* [asian_geostrike_put](https://github.com/itstonysantana/Heston-Matlab/blob/master/asian_geostrike_put.m)   -  Computes the price of an Asian geometric average strike put
* [StochJumpPath](https://github.com/itstonysantana/Heston-Matlab/blob/master/StochJumpPath.m)         -  Simulates price paths for a stock price under the Heston model with jumps

### References

* The Mathematics of Derivatives Securities with Applications in MATLAB by Mario Cerrato
* [Stock Price Jumps and Cross-sectional Return Predictability](http://www.q-group.org/wp-content/uploads/2016/03/Stock-Price-Jumps.pdf)
* [Estimating the parameters of Stochastic Volatility Models using Option Price Data](http://www.ncer.edu.au/papers/documents/WP87.pdf)
