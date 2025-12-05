# one-time package import
install.packages("reshape2")

# load data from ch03
batting = read.csv("ch03/data/Batting.csv", 
                   stringsAsFactors = FALSE, na.strings="")

# load libraries
library(dplyr)
library(reshape2)

# filter stats for 2008 onwards
x = filter(batting, yearID >= 2008)

# group dataframe by teamID
x = group_by(x, teamID, yearID)

# complete summary statistics
x = summarise(x, roster_size = n_distinct(playerID))

# print df
x

# run dcast to pivot current data
y = dcast(x, teamID ~ yearID, value.var = "roster_size")

# view df
head(y)

# melt df
long = melt(y, id.vars = "teamID", 
            measure.vars = as.character(2008:2013))

# view df
head(long)





