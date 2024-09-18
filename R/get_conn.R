lts_conn <- c("1132034136946069504", "1132034984149213184", "1132035064059207680", "1132035146527408128", "1132035221005737984") %>%
  purrr::set_names("League 1", "L2 The Neverending Tilt Montage", "L3 The Only Legitimate LTS Bowl League", "L4 Sack Based 4", "League 5") %>%
  purrr::map(.x = .,
             ~ ffscrapr::ff_connect(
               league_id = .x,
               platform = "sleeper",
               season = 2024
             ))