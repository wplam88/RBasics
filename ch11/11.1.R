# load data from ch03
batting = read.csv("ch03/data/Batting.csv", 
                   stringsAsFactors = FALSE, na.strings="")
players = read.csv("ch03/data/Master.csv", stringsAsFactors = FALSE)

# merge batting and players dfs
batting_w_country = merge(batting, 
                          players[ ,c("playerID", "birthCountry")],
                          by = "playerID")

batting_w_country[1:10, c("playerID", "yearID", "G", "birthCountry")]

# merge entire players dataframe with batting
batting_w_country = merge(batting, players, by=player_id)


