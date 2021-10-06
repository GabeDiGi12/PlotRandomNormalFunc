## PlotRandom.R
## Author: Gabe DiGiovanni
## Date: 10/6/2021

## Purpose: 
## A function that will generate a random sample
## of iid normal random values
## Then it will plot a histogram with an overlaid mean on the plot

## Inputs:
## numpts = the number of points to generate
## mu = the theoretical mean of the normal distribution
## sigma = standard deviation of the normal distribution
## numbins = the number of bins in the histogram
## meanColor = color for the overlaid mean
## seed = a random number generator seed, using to ensure reproducibility

## Output:
## List with the following elements:
## Random_values = a vector of the generated random 'normal' values
## mean_x = the sample mean of the Random_values
## sd_x = sample standard deviation of Random_values

plotRandomNormals <- function(numpts=100, 
                              mu=0, sigma=1, 
                              numbins=10, 
                              meanColor="navy", 
                              seed=10062021) {
  set.seed(seed)
  rand_x <- rnorm(numpts, mean=mu, sd=sigma)
  mean_x <- mean(rand_x)
  hist(rand_x, breaks=numbins)
  abline(v=mean_x, col=meanColor, lwd=3)
  list(Random_values = rand_x,
       Mean_x = mean_x,
       SD_x = sd(rand_x))
}
plotRandomNormals()
