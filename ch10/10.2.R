# load library
library(dplyr)

# load data from ch03
batting = read.csv("ch03/data/Batting.csv", 
                   stringsAsFactors = FALSE, na.strings="")

# select cols using base R way
head(batting[, c("playerID", "yearID", "teamID", "AB", "H", "HR")])

# select cols using dplyr
head(select(batting, playerID, yearID, teamID, AB, H, HR))

#.create cols using base R way
batting$avg = round(batting$H / batting$AB, 3)
batting$year_2 = as.character(batting$yearID)
batting$playerID_short = substr(batting$playerID, 1, 5)

tail(batting[, c("playerID", "yearID", "teamID", "AB", "H", "avg")])

# create cols using dplyr
mutate(batting, avg = H/AB,
       year_2 = as.character(yearID),
       playerID_short = substr(playerID, 1, 5))

tail(select(batting, playerID, playerID_short, H, AB, avg))

# filter cols using base R way
batting[batting$yearID == 2009 & batting$AB > 500 & 
          (batting$teamID == "NYA" | batting$teamID == "NYN"), 1:4]

# filter cols using dplyr way
filter(batting, yearID == 2009, AB > 500, 
       teamID == "NYA" | teamID == "NYN")[, 1:4]

# sort/arrange cols using base R way
head(batting[order(-batting$yearID, batting$teamID, -batting$AB), 1:4])


# sort/arrange cols using dplyr way
head(arrange(batting, desc(yearID), teamID, desc(AB)))[, 1:4]

# rename cols using base R way
names(batting)[1:5]
names(batting)[which(names(batting) == "yearID")] = "Year"
names(batting)[which(names(batting) == "playerID")] = "Player"

# rename cols using dplyr way
batting = rename(batting, Year = yearID, Player = PlayerID)
names(batting)[1:5]









