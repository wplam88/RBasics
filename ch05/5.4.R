# load data from ch03
batting = read.csv("ch03/data/Batting.csv", stringsAsFactors = FALSE)

# Quick checks
head(batting)

# run model
my_model = lm(RBI ~ AB + HR, data = batting)

# type of object
typeof(my_model)

# names of items stored inside the lm object
names(my_model)

# coefficients
my_model$coefficients


