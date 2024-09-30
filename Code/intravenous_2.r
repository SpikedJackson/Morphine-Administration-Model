# model for t > h morphine given intravenously
h = 5
t_vals <- seq(h, 15, by = 0.01)
r = 3.7
c = 1
soln <- (r/c) * (exp(c*h)-1) * exp(-c*t_vals)
plot(t_vals, soln, type = "l", col = "blue", xlab = "Time in hours",
ylab = "Amount of Drugs in mgs", main = "Clearance of Morphine in the Body,
r = 3.7mg/hr, c = 1mg/hr")
