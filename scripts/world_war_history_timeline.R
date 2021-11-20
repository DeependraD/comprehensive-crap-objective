require(tidyverse)
require(rvest)

wwi_tl <- read_html("https://en.wikipedia.org/wiki/Timeline_of_World_War_I")

wwi_tl %>% 
  html_node(xpath = '//*[@id="mw-content-text"]/div/table[3]') %>% 
  html_table(fill = T) %>% 
  as_tibble(.name_repair = "universal") %>% 
  View()

wwi_df <- wwi_tl %>% 
  html_nodes(xpath = '//*[@id="mw-content-text"]/div/table') %>% 
  .[c(3, 5:10)] %>% 
  map_dfr(~html_table(.x, fill = T), .id = "year") %>% 
  as_tibble(.name_repair = "universal")

wwi_df %>% 
  write_csv("./world_warI_2014-15-17-18-19_timeline.csv", na = "")
