# blue riband
merge_coords <- function(){
	fix_duration <- function(){
		fix_speed <- function(){
			fix_distance <- function(){
				fix_dates <- function(){
					scrape_wiki <- function(){
						library(rvest)
						library(magrittr)
						library(dplyr)
						library(janitor)
						library(tidyr)


						library(rvest)
						html <- read_html("https://en.wikipedia.org/wiki/Blue_Riband")
						html %>%
							html_element(".wikitable~ .wikitable" ) %>%
							html_table(header = T, trim = T, dec = "." ) %>%
							rename_with(~janitor::make_clean_names(.)) %>%
							select(-flag) %>%
							mutate(heading = "east") -> eb

						html <- read_html("https://en.wikipedia.org/wiki/Blue_Riband")
						html %>%
							html_element(".wikitable:nth-child(62)" ) %>%
							html_table(header = T, trim = T, dec = "." ) %>%
							rename_with(~janitor::make_clean_names(.)) %>%
							select(-flag) %>%
							mutate(heading = "west") -> wb

						rbind(eb, wb)
					}
					br <- scrape_wiki()

					start_month <- tibble(start_month = month.name,
										  start_numb = c(paste0("0", 1:9), 10:12)
					)
					end_month <- tibble(end_month = month.name,
										end_numb = c(paste0("0", 1:9), 10:12)
					)

					br %>%
						mutate(ship = gsub("\\[.*\\]", "", ship)) %>%
						separate(dates, into = c("start", "end"), sep = "–") %>%
						separate(start, into = c("start_day", "start_month"), sep = " ") %>%
						mutate(end = stringr::str_trim(end, side = "both")) %>%
						separate(end, into = c("end_day", "end_month"), sep = " ") %>%
						mutate(start_month = ifelse(is.na(start_month), end_month, start_month)) %>%
						mutate(start_day = stringr::str_pad(start_day, width = 2, side = "left", pad = "0")) %>%
						mutate(end_day = stringr::str_pad(end_day, width = 2, side = "left", pad = "0")) %>%
						left_join(., start_month, by = "start_month") %>%
						left_join(., end_month, by = "end_month") %>%
						mutate(start_year = year) %>%
						unite(start_date, c(start_year, start_numb, start_day), sep = "-" ) %>%
						unite(end_date, c(year, end_numb, end_day), sep = "-") %>%
						select(!c(start_month, end_month)) %>%
						mutate(across(end_date:start_date, ~as.Date(. , format = "%Y-%m-%d")))
				}
				df <- fix_dates()
				df %>%
					mutate(dist_nm = stringr::word(distance, 1),
						   dist_km = stringr::word(distance, -1)) %>%
					mutate(across(dist_nm:dist_km, ~gsub(",|\\(|\\)|km", "", .))) %>%
					mutate(dist_km = stringr::str_sub(dist_km, start = 1, end = 4)) %>%
					mutate(across(dist_nm:dist_km, ~as.numeric(.))) %>%
					select(!distance)
			}
			df <- fix_distance()
			df %>%
				separate(speed, into = c("knots", "km_h"), sep = "\\(") %>%
				mutate(knots = gsub(" knots", "", knots) %>% as.numeric(),
					   km_h = gsub("km/h\\)", "", km_h),
					   km_h = substr(km_h, 1, 5) %>% as.numeric())
		}
		df <- fix_speed()
		df %>%
			separate(days_hours_minutes, into = c("days", "hours", "minutes"), sep = ", ") %>%
			mutate(days = gsub(" d| 0 h", "", days)) %>%
			replace_na(list(hours = "0", minutes = "0")) %>%
			mutate(hours = gsub(" h", "", hours)) %>%
			mutate(minutes = gsub(" m", "", minutes)) %>%
			mutate(across(days:minutes, ~as.numeric(.))) %>%
			mutate(duration_hours = (days * 24) + hours + (minutes / 60)) %>%
			select(!c(days, hours, minutes))
	}
	df <- fix_duration()
	from_coords <-
		tribble(
			~from, ~from_country, ~from_lat, ~from_lng,
			"Ambrose Light", "United States", 40.4700, -73.7500,
			"Avonmouth", "United Kingdom", 51.5000, -2.7000,
			"Beady Hook", "United States", 40.4700, -73.7500,
			"Bishop Rock", "United Kingdom", 49.8728, -6.3025,
			"Cherbourg", "France", 49.6333, -1.6167,
			"Eddystone", "United Kingdom", 50.1700, -4.3500,
			"Falmouth", "United Kingdom", 50.1500, -5.0500,
			"Gibraltar", "Spain", 36.1408, -5.3536,
			"Halifax", "Canada", 44.6500, -63.6000,
			"Liverpool", "United Kingdom", 53.4167, -3.0000,
			"Needles", "United Kingdom", 50.7000, -1.6000,
			"New York", "United States", 40.7128, -74.0060,
			"Queenstown", "Ireland", 51.8503, -8.2943,
			"Southampton", "United Kingdom", 50.9097, -1.4044,
			"Sandy Hook", "United States", 40.4759, -74.0094
		)
	to_coords <-
		from_coords %>%
		rename(to = from, to_country = from_country, to_lat = from_lat, to_lng = from_lng)

	df %>%
		mutate(from = case_when(
			from == "Ambrose" ~ "Ambrose Light",
			from == "Queenstown," ~ "Queenstown",
			from == "Sandy Bank" ~ "Sandy Hook",
			from == "The Needles" ~ "Needles",
			TRUE ~ from
		)) %>%
		mutate(to = case_when(
			to == "Ambrose" ~ "Ambrose Light",
			to == "Queenstown," ~ "Queenstown",
			to == "Sandy Bank" ~ "Sandy Hook",
			to == "The Needles" ~ "Needles",
			TRUE ~ to
		)) %>%
		left_join(., from_coords, by = c("from" = "from")) %>%
		left_join(., to_coords, by = c("to" = "to")) %>%
		select(ship, heading, line, start_date, end_date,
			   from, from_country, from_lat, from_lng,
			   to, to_country, to_lat, to_lng,
			   dist_nm, dist_km, knots, km_h, duration_hours) %>%
		arrange(heading, start_date) %>%
		rename(to_city = to, from_city = from)
}
blue_riband <- merge_coords()
usethis::use_data(blue_riband, overwrite = TRUE)
