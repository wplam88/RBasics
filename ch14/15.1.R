# create vectors
group = c("A", "B", "C", "D", "E")
sales = c(19, 60, 82, 72, 26)

# create df
d = data.frame(group, sales)

# check total sales
total_sales = sum(d$sales)

# initialize new_sales BEFORE the loop
d$new_sales = d$sales

# init vals
growth = 0

while (sum(d$new_sales) < 300) {
  growth = growth + 0.01
  d$new_sales = d$sales * (1 + growth)
  current_total = sum(d$new_sales)
  print(paste0("s: ", floor(current_total), ", g: ", round(growth, 2)))
}


