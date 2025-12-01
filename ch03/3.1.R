# import the two data sets
# TODO - find the right path
players = read.csv("ch03/data/Master.csv", stringsAsFactors = FALSE)
batting = read.csv("ch03/data/Batting.csv", stringsAsFactors = FALSE)

# quick peak, 5 rows, 6 cols
players[1:5, 1:6]

# quick peak, 5 rows, 10 cols
batting[1:5, 1:10]

## merge batting and two columns of players table
batting_extra = merge(batting, players[,c("playerID","birthYear")])

# quick peak at the new dataframe
batting_extra[1:10, c("playerID", "yearID", "teamID", "G", "birthYear")]

# filter batting_extra: players > 200 at bats, post 1950
x = batting_extra[which(batting_extra$AB > 200 & 
                    batting_extra$yearID >= 1950), ]

# calculate players' age as yearID - birthYear
x$age = x$yearID -x$birthYear

# plot a histogram of age
hist(x$age)

# statistical summary of age
summary(x$age)


