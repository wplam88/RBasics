# load data from ch03
batting = read.csv("ch03/data/Batting.csv", 
                   stringsAsFactors = FALSE, na.strings="")

# load libraries
library(sqldf)
library(dplyr)

# summarize with sqldf
sqldf("SELECT teamID, yearID, SUM(AB) as AB, SUM(HR) as HR,
  SUM(H*.1) / SUM(AB*.1) as avg, count(*) as size
  FROM batting
  WHERE yearID > 2008
  GROUP BY teamID, yearID
  LIMIT 10")


# summarize with dplyr
# keep stats for 2008 onwards
x = filter(batting, yearID >= 2008)

# group df by teamID and yearID
x = group_by(x, teamID, yearID)

# compute summary statistics
x = summarise(x,
              sum_AB = sum(AB),
              sd_RBI = round(sd(RBI), 1),
              batting_avg = round(sum(H) / sum(AB), 3),
              roster_size = n_distinct(playerID)
              )[1:10, ]

# print first 10 rows
x[1:10, ]