# create a vector of names
names = c("Will Lam", "Preston Lam", "Travis Lam")

# find the position of the first space
space_pos = regexpr(" ", names)
space_pos

# extract first and last name
first_names = substr(names, 1, space_pos - 1)
last_names = substr(names, space_pos + 1, nchar(names))

