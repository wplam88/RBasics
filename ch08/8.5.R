# import data
batting = read.csv("ch03/data/Batting.csv", 
                   stringsAsFactors = FALSE, na.strings="")

# remove columns using NULL
batting$G_old = NULL

# remove columns using which()
batting_copy = batting[, 1:8]
names(batting_copy)

# remove stint, lgID, G_batting
batting_copy = batting_copy[, -which(names(batting_copy)
                  %in% c("stint", "lgID", "G_batting"))]

# check names
names(batting_copy)

