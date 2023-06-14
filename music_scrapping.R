message('Loading Packages')
library(rvest)
library(tidyverse)
library(mongolite)

message('Scrapping Data')
url <- "https://www.billboard.com/charts/hot-100"  
hot100 <- read_html(url) 
rows <- hot100 %>% html_elements(".chart-results-list .o-chart-results-list-row")

music_rank <- tibble(
  rank = rows %>% html_attr("data-detail-target") %>% as.numeric(),
  title = rows %>% html_elements(".c-title") %>% html_text(trim = T)
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










