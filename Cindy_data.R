set.seed(1222)

library(tidyverse)
mygrade <-
  tibble(
    course = sample(
      c("stat", "econ", "other"),
      size = 10,
      replace = TRUE,
      prob = c(0.6, 0.2, 0.2)
    ),
    grade = rnorm(10, mean = 85, sd = 4),
    `like or not` = sample(c("like", "dislike"), 10, TRUE)
  )

mygrade = 
  mygrade |>
  mutate(course = case_when(
    course == "stat" ~ "Stat",
    course == "other" ~ "Other"
  ))

mygrade = 
  mygrade |>
  mutate(`like or not` = case_when(
    `like or not` == "like" ~ TRUE,
    `like or not` == "dislike" ~ FALSE
  ))

mygrade$course[1] = "hello"
mygrade$grade[1] = -100
mygrade$`like or not`[3] = "Neutral"
mygrade$grade[6] = "not available"
