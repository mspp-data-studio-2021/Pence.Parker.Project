library(fs) 
library(zip)

#Download City Council Districts
file_url <- "https://www1.nyc.gov/assets/planning/download/zip/data-maps/open-data/nycc_21b.zip"
zip_file <- path("data", "nyccitycouncildistricts_21b.zip")
shp_file <- path("data", "nycc.shp")

if (!file_exists(zip_file) & !file_exists(shp_file)) {
  download.file(file_url, zip_file, mode = "wb")
}

if (!file_exists(shp_file)) {
  unzip(zip_file, exdir = path("data"))
}

file_delete(zip_file)

#Download School Districts
file_url <- "https://www1.nyc.gov/assets/planning/download/zip/data-maps/open-data/nysd_21b.zip"
zip_file <- path("data", "nysd_21b.zip")
csv_file <- path("data", "nysd.shp")

if (!file_exists(zip_file) & !file_exists(csv_file)) {
  download.file(file_url, zip_file, mode = "wb")
}

if (!file_exists(csv_file)) {
  unzip(zip_file, exdir = path("data"))
}

file_delete(zip_file)
