# data below is in tidy eval, syntax a bit different

# load data from ch03
players = read.csv("ch03/data/Master.csv", 
                   stringsAsFactors = FALSE, na.strings="")

# summary by birth month
players %>%
  group_by(birthMonth) %>%
  summarise(players = n()) %>%
  arrange(desc(players))

# summary by birth country
players %>%
  group_by(birthCountry) %>%
  summarise(players = n()) %>%
  arrange(desc(players))

# summary by height
players %>%
  group_by(height) %>%
  summarise(players = n()) %>%
  arrange(desc(players))

# define function with optional rows paramter, def 5 rows
count_players = function(var, rows = 5) {
  players %>%
    group_by({{ var }}) %>%
    summarise(players = n()) %>%
    arrange(desc(players)) %>%
    slice_head(n = rows)
}

# function calls
count_players(birthMonth, rows = 10)
count_players(birthCountry)
count_players(height)



