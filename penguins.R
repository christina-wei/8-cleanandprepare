library(tidyverse)
library(janitor)

raw_penguin_data = 
  read_csv(
    file = "https://portal.edirepository.org/nis/dataviewer?packageid=knb-lter-pal.219.5&entityid=002f3893385f710df69eeebe893144ff",
    show_col_types = FALSE
  )

cleaned_penguin_data =
  clean_names(raw_penguin_data) |>
  rename(
    "egg_date" = "date_egg",
    "study_id" = "study_name"
  )