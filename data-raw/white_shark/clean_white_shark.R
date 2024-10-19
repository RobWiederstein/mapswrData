library(dplyr)
library(tidyr)
library(lubridate)

# shark id
readr::read_delim("./data-raw/white_shark/88425.csv",
				  show_col_types = F,
				  name_repair = ~janitor::make_clean_names(.)) %>%
	group_by(shark, length, sex) %>%
	summarise(n = n()) %>%
	ungroup() %>%
	select(shark:sex)-> shark_id

# shark group by hour and average
readr::read_delim("./data-raw/white_shark/88425.csv",
				  show_col_types = F,
				  name_repair = ~janitor::make_clean_names(.)) %>%
	rename(lng = longitude, lat = latitude, date = dt) %>%
	mutate(date = as.POSIXct(date, format = '%d/%m/%y %H:%M', tz = "UTC"),
		   .before = shark) %>%
	mutate(date_hour = format(date, "%Y-%m-%d %H")) %>%
	select(date, date_hour, everything()) %>%
	group_by(shark, date_hour) %>%
	summarise(n = n(),
			  mean_depth = mean(depth),
			  mean_lat = mean(lat),
			  mean_lng = mean(lng),
			  mean_shore_distance = mean(shore_distance),
			  .groups = "drop") %>%
	group_by(shark) %>%
	mutate(obs = row_number(), .before = n) %>%
	arrange(shark, date_hour) %>%
	left_join(., shark_id, by = "shark") %>%
	mutate(shark = factor(shark, levels = paste0("WS", 1:10))) %>%
	ungroup() %>%
	rename(lat = mean_lat, lng = mean_lng) -> white_shark
usethis::use_data(white_shark, overwrite = T)

