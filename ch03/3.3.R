# import data
car_prices = read.csv("ch03/data/car_values_kuiper.csv",
                      stringsAsFactors = FALSE)

# build regression model and save model to object named "m"
m = lm(Price ~ Mileage + as.factor(Cylinder),
       data = car_prices)

# get names of lm object
names(m)

# get summary of lm object
summary(m)