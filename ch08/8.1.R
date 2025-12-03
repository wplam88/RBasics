# load data from ch03
players = read.csv("ch03/data/Master.csv", stringsAsFactors = FALSE)

# calculate mean weight
mean(players$weight, na.rm = TRUE)

# calculate sd weight
sd(players$weight, na.rm = TRUE)

# get column values row 1:5 in reverse order
players$weight[5:1]

# count number of unique weight values
length(unique(players$weight))

# reference multiple columns
summary(players[, c("height", "weight")])

