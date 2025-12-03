# import data
batting = read.csv("ch03/data/Batting.csv", 
                   stringsAsFactors = FALSE, na.strings="")

# copy data I want to work with
batting_copy = batting

# explore batting column names
names(batting_copy)

# rename columns by index in names
names(batting_copy)[11] = "_2B"
names(batting_copy)[8] = "at_bats"
names(batting_copy)[which(names(batting_copy) == "X3B")] = "_3B"

# convert all column names to lower
names(batting_copy) = tolower(batting_copy)

# append a suffix to all col names
names(batting_copy) = paste(names(batting_copy), "_z", sep="")

# create a dataframe to compare old and new column names
data.frame(old = names(batting), new = names(batting_copy))[1:15, ]


