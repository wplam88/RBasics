# create a list of vectors

list_a = list(c(1:10),
              c(1.01, 1.02, 1.03),
              c(0, 1, 0, 0, 0, 0, 1))


# call list_a
list_a


# (l)apply mean function to all vectors in list
lapply(list_a, mean)

# (s)apply mean function to all vectors in list
sapply(list_a, mean)

# explore str of lapply() and sapply()
str(lapply)
str(sapply)

# apply custom functions
gap = function(v) {
  min = min(v)
  max = max(v)
  return(max-min)
}

# apply gap to list_a
sapply(list_a, gap)

# trim function to replace gap in sapply
sapply(list_a, function(v) {
  min = min(v)
  max = max(v)
  return(max-min)
})

# trim function further for brevity
sapply(list_a, function(v) {max(v) - min(v)})



