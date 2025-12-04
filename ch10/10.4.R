# load library
library(dplyr)

# load data from ch03
batting = read.csv("ch03/data/Batting.csv", 
                   stringsAsFactors = FALSE, na.strings="")

# chaining dplyr functions
x = filter(batting, yearID == 2013) %>%
  group_by(teamID) %>%
  arrange(desc(HR)) %>%
  mutate(rank = rank(desc(HR) ,ties.method = "min"),
         cum_HR = cumsum(HR),
         cum_HR_pct  = round(cumsum(HR) / sum(HR), 2)) %>%
  filter(rank <= 5) %>%
  arrange(teamID, rank) %>%
  select(teamID, playerID, HR, rank, cum_HR, cum_HR_pct)

x[1:20, ]
