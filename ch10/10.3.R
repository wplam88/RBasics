# load library
library(dplyr)

# load data from ch03
batting = read.csv("ch03/data/Batting.csv", 
                   stringsAsFactors = FALSE, na.strings="")

# set up data for a window function
x = filter(batting, yearID == 2013)
x = group_by(x, teamID)

# create new cols on a by-group basis
x = arrange(x, desc(HR))

# calculate rank and cumulative HR
x = mutate(x,
          rank = rank(desc(HR) ,ties.method = "min"),
          cum_HR = cumsum(HR),
          cum_HR_pct  = round(cumsum(HR) / sum(HR), 2))

# sort and print samples of 20 rows
x = arrange(x, teamID, rank)
x[1:20, c("teamID", "playerID", "HR", "rank", "cum_HR", "cum_HR_pct")]

# filter top 5 homerun hitters by team
x = filter(x, rank > 5)
x[1:20, c("teamID", "playerID", "HR", "rank", "cum_HR", "cum_HR_pct")]






