# create a vector of names
names = c("Will Lam", "Preston Lam", "Travis Lam")

# find the position of the first space
space_pos = regexpr(" ", names)
space_pos

# extract first and last name
first_names = substr(names, 1, space_pos - 1)
last_names = substr(names, space_pos + 1, nchar(names))

# check structure of strsplit()
str(strsplit)

name_split = strsplit(names, split = " ")
name_split

# get the third vector item from name_split
name_split[[3]]

# get the second item from that vector
name_split[[3]][2]

# create functions to use in sapply
first_thing = function(v) {
  v[1]
}

last_thing = function(v) {
  v[2]
}

# use the functions in sapply
sapply(name_split, first_thing)
sapply(name_split, last_thing)