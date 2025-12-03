# load data from ch03
players = read.csv("ch03/data/Master.csv", stringsAsFactors = FALSE)

# create new column
players$debut_v2 = as.Date(players$debut, format = "%Y-%m-%d")

# print summary
summary(players[, c("debut", "debut_v2")])

# check variable class
class(players$debut_v2)

# utilize as.numeric conversion
strings = c("$150,000", "$67", "$1,982")
class(strings)

# convert strings to numbers
strings = gsub(pattern = "\\$|", replacement = "", x = strings)
numbers = as.numeric(strings)
class(numbers)

