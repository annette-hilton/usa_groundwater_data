alabama_usgs_date <- alabama_usgs %>% 
  mutate(
    level_date = lubridate::ymd(lev_dt),
    level_decimal_date = lubridate::decimal_date(level_date), 
    level_dec_dt_full = case_when(
      !is.na(level_decimal_date) ~ level_decimal_date, 
      is.na(level_decimal_date) ~ as.numeric(lev_dt) + 0.45),
    level_date_new = lubridate::date_decimal(level_dec_dt_full),
    level_month = lubridate::month(level_date_new, label = TRUE),
    level_year = lubridate::year(level_date_new))