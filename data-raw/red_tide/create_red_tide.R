library(tidyr)
library(lubridate)
library(dplyr)
library(magrittr)

# clean ----
red_tide <- vroom::vroom(
    file = "./data-raw/red_tide/habsos_20230714.csv",
    .name_repair = ~janitor::make_clean_names(.x),
    show_col_types = F
) %>%
    mutate(sample_date_time = lubridate::mdy_hm(sample_date, tz = Sys.timezone()),
                  .after = sample_date) %>%
    select(!sample_date) %>%
    arrange(state_id, sample_date_time) %>%
    drop_na(cellcount, category) %>%
    filter(category != "not observed") %>%
    ## create date grouping variables ----
    #mutate(sample_date = as.Date(sample_date_time)) %>%
    #mutate(year = year(sample_date_time), .after = sample_date) %>%
    #mutate(month = month(sample_date_time), .after = year) %>%
    #mutate(day = day(sample_date_time), .after = month) %>%
    #mutate(hour = hour(sample_date_time), .after = day) %>%
    ## drop empty and non-numeric columns ----
    select(!c(cellcount_unit, cellcount_qa)) %>%
    select(!c(salinity_unit, salinity_qa)) %>%
    select(!c(water_temp_unit, water_temp_qa)) %>%
    select(!c(wind_dir:wind_speed_qa)) %>%
    select(!c(salinity, water_temp, sample_depth)) %>%
    ## drop columns with no variance ----
    select(!c(genus, species)) %>%
    ## drop any nas ----
    drop_na(latitude, longitude)
    ## add gulf dummy ----
usethis::use_data(red_tide, overwrite = T)
