# load data from ch03
players = read.csv("ch03/data/Master.csv", stringsAsFactors = FALSE)

# filtering/subsetting data sets
columns_to_keep = c("playerID", "birthYear", "birthState")
players[c(3736, 5907), columns_to_keep]

# create row index vector with which()
my_players = which(players$birthState == "NY" &
             players$birthYear == 1982)

# print "my_players" rows and "columns_to_keep" columns
players[my_players, columns_to_keep]






