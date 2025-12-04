# one-time package import
install.packages(c("sqldf", "dplyr"))

# load libraries
library(sqldf)
library(dplyr)

# load data from ch03
batting = read.csv("ch03/data/Batting.csv", 
                   stringsAsFactors = FALSE, na.strings="")

# simple SELECT statement (sql) and save as a variable
new_table = sqldf("SELECT playerID, yearID, teamID, AB, H, HR
      FROM batting
      WHERE yearID=2009
      ORDER BY AB DESC
      LIMIT 10")

# explore table
tail(new_table)


