# load data from ch03
players = read.csv("ch03/data/Master.csv", stringsAsFactors = FALSE)

# show frequency of player births by country
as.data.frame(table(players$birthCountry))

# plot data
hist(players$height)
