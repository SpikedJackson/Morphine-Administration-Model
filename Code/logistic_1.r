# Logistic Drug Clearance with Euler’s Method 0<=t<=h
exp_model <- function(pop, c, r, K) {
val <- r - (c*pop*(1-(pop/K)))
return(val)
}
t_vals <- seq(0, 5, by = 0.01)
p_vals <- rep(NA, times = length(t_vals))
p_vals[1] <- 0
for (n in 2:length(t_vals)) {
h <- t_vals[2] - t_vals[1]
p_vals[n] <- p_vals[n-1] + h*exp_model(pop = p_vals[n-1], c = 1, r = 3.7, K = 10)
}
plot(t_vals, p_vals, type = "l", col = "blue", xlab = "Time in hours",
ylab = "Amount of Drugs in mgs",
main = "Modelling Logistic Drug Clearance in the Body with Euler’s Method")