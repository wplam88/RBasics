# install the sqldf library (one-time setup)
install.packages("sqldf")

# load the sqldf library
library(sqldf)

# import salaries.csv
salaries = read.csv("ch03/data/Salaries.csv")

# import teams.csv
teams = read.csv("ch03/data/Teams.csv")

# each players salary by year
head(salaries)

# write a SQL join to merge salaries and teams dataframes

salaries_teams = sqldf("SELECT a.*, b.name
                      FROM salaries a
                      JOIN teams b 
                      ON a.yearID = b.yearID
                      AND a.teamID = b.teamID")

# look at results
head(salaries_teams)

al_nl_salary = 
  sqldf("SELECT yearID,
        AVG(CASE WHEN lgID = 'AL' THEN salary END)
            as avg_AL_salary,
        AVG(CASE WHEN lgID = 'NL' THEN salary END)
            as avg_NL_salary
        FROM salaries_teams
        GROUP BY 1")

# one-time package install
install.packages("googleVis")

# load googleVis
library(googleVis)

# graph avg_AL_salary and avg_NL_salary by year
g = gvisLineChart(al_nl_salary, xvar = "yearID", 
                  yvar = c("avg_AL_salary", "avg_NL_salary"),
                  options = list(title = "Average Salaries Trends - AL vs NL"))

plot(g)
