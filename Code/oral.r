# model for 0 <= t <= h morphine given orally as pill
h=5
t_vals <- seq(0, 24, by = 0.01)
c=1
Dmax=10
soln <- (h/(h*c-1))*Dmax*exp(-t_vals/h) + (h/(1-h*c))*Dmax*exp(-t_vals*c)
plot(t_vals, soln, type = "l", col = "blue", xlab = "Time in hours",
ylab = "Amount of Drugs in mgs", main = "Oral Ingestion of Morphine in the Body,
c = 1mg/hr")