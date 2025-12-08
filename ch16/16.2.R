# create a list of vectors

list_a = list(c(1:10),
              c(1.01, 1.02, 1.03),
              c(0, 1, 0, 0, 0, 0, 1))

# create b list of vectors

list_b = list(c(1:10),
              c(1.05, 1.06, 1.07),
              c(1, 1, 0, 1, 0, 0, 1))

# combine a pair of vectors
mapply(c, list_a, list_b)

# compute max - min across a both sets of vectors
mapply(function(a, b) {max(a, b) - min(a, b)}, a = list_a, b = list_b)




