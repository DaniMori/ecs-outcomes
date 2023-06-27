##----main----

# Libraries:

library(tidyverse)
library(readxl)
library(plotly)

# Output configuration:
theme_set(theme_minimal())

# Dataset loading and formatting:

PLANNING_DATA_PATH <- file.path(
  '~/..',
  r"(OneDrive - UAM\Documentación\Proyectos\Edad_con_Salud)",
  "Outcomes C2011 W4",
  "C2011_W4_Planning_outcomes.xlsx"
)

col_names <- PLANNING_DATA_PATH                             |>
  read_excel(col_names = FALSE, n_max = 1)                  |>
  pivot_longer(everything())                                |>
  filter(!is.na(value), !name %in% paste0("...", c(7, 19))) |>
  select(value, name)                                       |>
  deframe()

planning_data <- PLANNING_DATA_PATH |>
  read_excel(skip = 2)              |>
  select(-(...23:...25))            |>
  rename(!!!col_names)

coding_data <- planning_data      |>
  filter(!ASIGNEE...7 |> is.na()) |>
  select(ASIGNEE = ASIGNEE...7,  `DUE DATE` = `DUE DATE...8`,  points = Coding)
review_data <- planning_data       |>
  filter(!ASIGNEE...10 |> is.na()) |>
  select(ASIGNEE = ASIGNEE...10, `DUE DATE` = `DUE DATE...11`, points = Review)


# Number of outcomes:

## By team member:

### Coding:
coding_load <- coding_data |>
  ggplot(aes(x = ASIGNEE, fill = ASIGNEE)) +
  geom_bar()

### Review:
review_load <- review_data |>
  ggplot(aes(x = ASIGNEE, fill = ASIGNEE)) +
  geom_bar()

### Total:
total_load <- coding_data |> bind_rows(review_data) |>
  ggplot(aes(x = ASIGNEE, fill = ASIGNEE)) +
  geom_bar()

## By date:

### Coding:
coding_date <- coding_data |>
  count(ASIGNEE, `DUE DATE`) |>
  ggplot(aes(x = `DUE DATE`, y = n, color = ASIGNEE, group = ASIGNEE)) +
  geom_freqpoly(stat = "identity") +
  geom_point() +
  ylim(0, 5)

### Review:
review_date <- review_data |>
  count(ASIGNEE, `DUE DATE`) |>
  ggplot(aes(x = `DUE DATE`, y = n, color = ASIGNEE, group = ASIGNEE)) +
  geom_freqpoly(stat = "identity") +
  geom_point() +
  ylim(0, 5)

### Total:
total_date <- bind_rows(coding_data, review_data) |>
  count(ASIGNEE, `DUE DATE`) |>
  ggplot(aes(x = `DUE DATE`, y = n, color = ASIGNEE, group = ASIGNEE)) +
  geom_freqpoly(stat = "identity") +
  geom_point() +
  ylim(0, 5)

# Estimated efforts (in "relative points"):

## By team member:

### Coding:
coding_load <- coding_data |>
  count(ASIGNEE, wt = points) |>
  ggplot(aes(x = ASIGNEE, y = n, fill = ASIGNEE)) +
  geom_col()

### Review:
review_load <- review_data |>
  count(ASIGNEE, wt = points) |>
  ggplot(aes(x = ASIGNEE, y = n, fill = ASIGNEE)) +
  geom_col()

### Total:
total_load <- coding_data |> bind_rows(review_data) |>
  count(ASIGNEE, wt = points) |>
  ggplot(aes(x = ASIGNEE, y = n, fill = ASIGNEE)) +
  geom_col()

## By date:

### Coding:
coding_date <- coding_data |>
  count(ASIGNEE, `DUE DATE`, wt = points) |>
  ggplot(aes(x = `DUE DATE`, y = n, color = ASIGNEE, group = ASIGNEE)) +
  geom_freqpoly(stat = "identity") +
  geom_point()

### Review:
review_date <- review_data |>
  count(ASIGNEE, `DUE DATE`, wt = points) |>
  ggplot(aes(x = `DUE DATE`, y = n, color = ASIGNEE, group = ASIGNEE)) +
  geom_freqpoly(stat = "identity") +
  geom_point()

### Total:
total_date <- bind_rows(coding_data, review_data) |>
  count(ASIGNEE, `DUE DATE`, wt = points) |>
  ggplot(aes(x = `DUE DATE`, y = n, color = ASIGNEE, group = ASIGNEE)) +
  geom_freqpoly(stat = "identity") +
  geom_point()
