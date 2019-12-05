library(tidyverse)
library(tidyr)
library(ggthemes)



ufo_sightings <- read_csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2019/2019-06-25/ufo_sightings.csv")

ufo_sightings %>%
  separate(col = date_time, into = c("date", "time"), sep = " ") %>%
  separate(col = date, into = c("month", "day", "year"), sep = "/") %>%
  count(year, sort = TRUE) %>%
  ggplot(aes(x = year, y = n)) +
  coord_flip() +
  scale_x_discrete(breaks = c(1940, 1950, 1960, 1970, 1980, 1990, 2000, 2010)) +
  xlab("Year") +
  ylab("Number of Sightings") +
  ggtitle("UFO sightings over time") +
   geom_col(fill = "green2")
  )

  
  
         