# load data from ch03
players = read.csv("ch03/data/Master.csv", stringsAsFactors = FALSE)

# specific columns to keep
columns_to_keep = c("playerID", "birthYear", "birthState")

subset(players, subset=(birthState == "NY" & birthYear == 1982),
       select=columns_to_keep)

