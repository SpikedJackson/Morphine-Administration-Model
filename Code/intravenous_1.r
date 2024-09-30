# model for 0 <= t <= h morphine given intravenously
h = 5
t_vals <- seq(0, h, by = 0.01)
r = 3.7
c = 1
soln <- (r/c) - ((r/c) * exp(-c*t_vals))
plot(t_vals, soln, type = "l", col = "blue", xlab = "Time in hours",
ylab = "Amount of Drugs in mgs", main = "Intravenous Injection of Morphine in the Body,
r = 3.7mg/hr, c = 1mg/hr")
