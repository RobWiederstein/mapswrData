library(tidycensus)
library(dplyr)

atlanta <-
	get_acs(
		geography = "tract",
		variables = c(
			"B07002_001", # Estimate median age
			"B16010_041", # Estimate bacherlor's degree or higher
			"B25026_001", # total population in occupied housing units
			"B21001_002" #Estimate!!Total:!!Veteran
		),
		year = 2020,
		survey = "acs5",
		state = "GA",
		geometry = TRUE
	) %>%
	rename_with(~janitor::make_clean_names(.)) %>%
	tidyr::separate(name, into = c("tract", "county", "state"), sep = ", ") %>%
	mutate(county = stringr::str_replace(county, " County", "")) %>%
	filter(county %in% c("Fulton", "DeKalb", "Cobb", "Gwinnett", "Clayton")) %>%
	select(!moe) %>%
	tidyr::pivot_wider(names_from = variable, values_from = c(estimate))  %>%
	ungroup() %>%
	dplyr::rename(
		estimate_median_age = B07002_001,
		estimate_bachelors_degree_or_higher = B16010_041,
		estimate_total_population = B25026_001,
		estimate_veteran = B21001_002
	) %>%
	mutate(pct_bachelor = estimate_bachelors_degree_or_higher / estimate_total_population,
		   pct_veteran = estimate_veteran / estimate_total_population) %>%
	mutate(pct_bachelor = round(pct_bachelor * 100, 2),
		   pct_veteran = round(pct_veteran * 100, 2)) %>%
	select(geoid:state, estimate_median_age, pct_bachelor, pct_veteran, geometry) %>%
	mutate(pct_bachelor = ifelse(is.infinite(pct_bachelor), 0, pct_bachelor),
		   pct_veteran = ifelse(is.infinite(pct_veteran), 0, pct_veteran))
#usethis::use_data(atlanta, overwrite = TRUE)
save(atlanta, file = "data/atlanta.rda", compress = "bzip2")
