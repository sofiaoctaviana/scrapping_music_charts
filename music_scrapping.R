message('Loading Packages')
library(rvest)
library(tidyverse)
library(mongolite)

message('Scrapping Data')
url <- "https://www.billboard.com/charts/hot-100"  
hot100 <- read_html(url) 
rows <- hot100 %>% html_elements(".chart-results-list .o-chart-results-list-row")
rank_1 = rows %>% html_attr("data-detail-target") %>% as.numeric()
title_1 = rows %>% html_elements(".c-title") %>% html_text(trim = T)

artist_1 = rows %>% html_elements(".c-label") %>% html_text(trim = T)

artist_2 <-artist_1[seq(2,length(artist_1),8)]
artist_2


music_rank <- tibble(
  rank = rank_1[1:10],
  title = title_1[1:10],
  artist = artist_2[1:10]
)
#music_rank

#MONGODB
message('Input Data Music Charts to MongoDB Atlas')
atlas_conn <- mongo(
  collection = Sys.getenv("ATLAS_COLLECTION"),
  db         = Sys.getenv("ATLAS_DB"),
  url        = Sys.getenv("ATLAS_URL")
)

#insert data to mongodb
atlas_conn$insert(music_rank)
rm(atlas_conn)

#delete data from mongodb
#atlas$remove('{}')










