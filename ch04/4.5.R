# vectors practice

# sequence from 12:20
12:20

seq(12,20,1)

# combine vectors
c(1, 2, 3, c(4, 5, 6))

# preset vectors
letters

month.abb

# print values from a vector
people = c("Will", "Preston", "Travis")

# print entire vector
people

# print the first value
people[1]

# return portions of a vector using T/F
people[c(TRUE, TRUE, FALSE)]

# filter programmatically
people %in% c("Will", "Preston", "Tim")

# regular expressions practice
grepl("^W", x = people)
people[grepl("^W", x = people)]
which(grepl("^W", x = people))


