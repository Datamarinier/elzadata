## code to prepare `DATASET` dataset goes here

library(tibble)

#
postcodes <- tribble(
                ~gemeente,   ~postcode,    ~elz,          ~stad, ~bev_2021, ~benoeming,
                  "Schoten",       2900,    "ELZ Noord",      0, 34319,    "Schoten (2900)",
                  "Stabroek",      2940,    "ELZ Noord",      0, 18692,    "Stabroek (2940)",
                  "Wommelgem",     2160,    "ELZ Oost",       0, 12994,    "Wommelgem (2160)",
                  "Borsbeek",      2150,    "ELZ ZORA",       0, 11077,    "Borsbeek (2150)",
                  "Antwerpen",     2000,    "ELZ Centrum",    1, 38171,    "Antwerpen Centrum (2000)",
                  "Antwerpen",     2018,    "ELZ Centrum",    1, 60874,    "Antwerpen Zuid (2018)",
                  "Antwerpen",     2020,    "ELZ Zuid",       1, 27770,    "Antwerpen Kiel (2020)",
                  "Antwerpen",     2030,    "ELZ Noord",      1,  6709,    "Antwerpen Luchtbal (2030)",
                  "Antwerpen",     2040,    "ELZ Noord",      1,  9958,    "Antwerpen BEZALI (2040)",
                  "Antwerpen",     2050,    "ELZ Centrum",    1, 16900,    "Antwerpen Linkerover (2050)",
                  "Antwerpen",     2060,    "ELZ Centrum",    1, 42967,    "Antwerpen Noord (2060)",
                  "Deurne",        2100,    "ELZ Oost",       1, 80932,    "Deurne (2100)",
                  "Ekeren",        2180,    "ELZ Noord",      1, 28432,    "Ekeren (2180)",
                  "Hoboken",       2660,    "ELZ Zuid",       1, 41174,    "Hoboken (2660)",
                  "Merksem",       2170,    "ELZ Noord",      1, 44869,    "Merksem (2170)",
                  "Wilrijk",       2610,    "ELZ Zuid",       1, 41746,    "Wilrijk (2610)",
                  "Berchem",       2600,    "ELZ Centrum",    1, 43199,    "Berchem (2600)",
                  "Borgerhout",    2140,    "ELZ Oost",       1, 45842,    "Borgerhout (2140)"

              )

usethis::use_data(postcodes, overwrite = TRUE)

bev <- read.csv2("data-raw/postcodes_bev_indeling.csv")

names(bev) <- gsub("\\.","_",names(bev))

usethis::use_data(bev, overwrite = TRUE)

age_conv <- tribble(
                    ~age, ~age_r,
                    "j0_4", "0-4",
                    "j5_11", "5-11",
                    "j12_17_jaar", "12-17",
                    "j18_24_jaar", "18-64",
                    "j25_49_jaar", "18-64",
                    "j50_64_jaar", "18-64",
                    "j65_74_jaar", "65-84",
                    "j75_79_jaar", "65-84",
                    "j80_84_jaar", "65-84",
                    "j85_89_jaar", "85-plus",
                    "j90_94_jaar", "85-plus",
                    "j95_plus_jaar", "85-plus"
                  ) -> age


usethis::use_data(age_conv, overwrite = TRUE)
