library(dplyr)
library(sf)
library(rnaturalearth)
library(ggplot2)
path <- readr::read_csv("./data-raw/basking/shark_tracks.csv",
					  na = "nd",
					  show_col_types = FALSE) %>%
	mutate(date = as.Date(paste(year, month, day, sep = "-"))) %>%
	filter(ptt == 96002) %>%
	#dplyr::filter(date <= "2011-06-30") %>%
	select(-c(tsst, year, month, day)) %>%
	arrange(date, tuid) %>%
	st_as_sf(., coords = c("lon", "lat"), remove = FALSE, crs = 4326)


world <- ne_countries(scale = "medium", returnclass = "sf")

ggplot() +
geom_sf(data = df) +
geom_sf(data = world) +
geom_path(data = df, aes(lon, lat)) +
geom_text(data = df, aes(x = lon, y = lat, label = date), nudge_x = 0.01, nudge_y = 0.01) +
coord_sf(xlim = c(-71.8, -70.6), ylim = c(40.35, 41.1)) +
theme_bw()

#leaflet
library(leaflet)
leaflet() %>%
	addProviderTiles("Esri.OceanBasemap") %>%
	addPolylines(data = df, lng = ~lon, lat = ~lat, color = "red") #%>%
	addMarkers(data = df, lng = ~lon, lat = ~lat, popup = ~as.character(date)) ->p1
p1
object.size(p1)
