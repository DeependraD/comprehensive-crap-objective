## World history

## centuries

fifteen <- read_html("https://en.wikipedia.org/wiki/15th_century")
sixteen <- read_html("https://en.wikipedia.org/wiki/16th_century")
seventeen <- read_html("https://en.wikipedia.org/wiki/17th_century")
eighteen <- read_html("https://en.wikipedia.org/wiki/18th_century")
nineteen <- read_html("https://en.wikipedia.org/wiki/19th_century")
twenty <- read_html("https://en.wikipedia.org/wiki/20th_century")

fifteenth_cent <- html_nodes(fifteen, xpath = "/html/body/div[3]/div[3]/div[4]/div/ul") %>%
  map_df(~{
    data_frame(
      year = html_node(.x, "a") %>% html_text(trim=TRUE),
      record = html_nodes(.x, "li") %>% html_text(trim=TRUE)
    )
  })

sixteenth_cent <- html_nodes(sixteen, xpath = "/html/body/div[3]/div[3]/div[4]/div/ul") %>%
  map_df(~{
    data_frame(
      year = html_node(.x, "a") %>% html_text(trim=TRUE),
      record = html_nodes(.x, "li") %>% html_text(trim=TRUE)
    )
  })

seventeenth_cent <- html_nodes(seventeenth_cent, xpath = "/html/body/div[3]/div[3]/div[4]/div/ul") %>%
  map_df(~{
    data_frame(
      year = html_node(.x, "a") %>% html_text(trim=TRUE),
      record = html_nodes(.x, "li") %>% html_text(trim=TRUE)
    )
  })


eighteenth_cent <- html_nodes(eighteen, xpath = "/html/body/div[3]/div[3]/div[4]/div/ul") %>%
  map_df(~{
    data_frame(
      year = html_node(.x, "a") %>% html_text(trim=TRUE),
      record = html_nodes(.x, "li") %>% html_text(trim=TRUE)
    )
  })

nineteenth_cent <- html_nodes(nineteen, xpath = "/html/body/div[3]/div[3]/div[4]/div/ul") %>%
  map_df(~{
    data_frame(
      year = html_node(.x, "a") %>% html_text(trim=TRUE),
      record = html_nodes(.x, "li") %>% html_text(trim=TRUE)
    )
  })

twentieth_cent <- html_nodes(twenty, xpath = "/html/body/div[3]/div[3]/div[4]/div/ul") %>%
  map_df(~{
    data_frame(
      year = html_node(.x, "a") %>% html_text(trim=TRUE),
      record = html_nodes(.x, "li") %>% html_text(trim=TRUE)
    )
  })


# https://en.wikipedia.org/wiki/Timeline_of_ancient_history
# https://en.wikipedia.org/wiki/Timeline_of_the_Middle_Ages
