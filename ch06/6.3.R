# creating data frames manually
# create 3 vectors
first_name = c("Will", "Preston")
last_name = c("Lam", "Lam")
score = c(88, 11)

# create data frame and print it
new_df = data.frame(first_name, last_name, score)
new_df

# stack data frame
rbind(new_df, new_df)