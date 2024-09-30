# model for h < t morphine metabolized logistically
exp_model <- function(pop, c,K,r) {
val <- -(c*pop*(1-pop/K))
return(val)
}
t_vals <- seq(0, 7, by = 0.01)
p_vals <- rep(NA, times = length(t_vals))
p_vals[1] <- 8
for (n in 2:length(t_vals)) {
h <- t_vals[2] - t_vals[1]
p_vals[n] <- p_vals[n-1] + h*exp_model(pop = p_vals[n-1], c = 1, K=10,r=2)
}
plot(t_vals, p_vals, type = "l", col = "blue", xlab = "Time (Hours After h)",
ylab = "Amount of Drug in the Body",
main = "Euler’s Method for Modeling Logistic Drug Clearance in The Body")
lines(t_vals, p_vals, col = "blue")