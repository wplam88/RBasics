# import data
batting = read.csv("ch03/data/Batting.csv", 
  stringsAsFactors = FALSE, na.strings="")

# create a batting average column
batting$avg = batting$H / batting$AB

# singles
batting$X1B = batting$H - batting$X2B  - batting$X3B - batting$HR

# total bases
batting$TB = batting$HR * 4 + batting$X3B * 3 + batting$X2B * 2 + batting$X1B

# slugging
batting$slugging = batting$TB / batting$AB

# explore the data
head(batting)