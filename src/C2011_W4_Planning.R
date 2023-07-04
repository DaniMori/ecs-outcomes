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
  select(Assignee = ASIGNEE...7,  `Due date` = `DUE DATE...8`,  points = Coding)
review_data <- planning_data       |>
  filter(!ASIGNEE...10 |> is.na()) |>
  select(Assignee = ASIGNEE...10, `Due date` = `DUE DATE...11`, points = Review)


##----num-outcomes----

# Number of outcomes:

## By team member:

### Coding:
coding_load <- coding_data |>
  ggplot(aes(x = Assignee, fill = Assignee)) +
  geom_bar()                                 +
  ylab("Outcome datasets")                   +
  guides(fill = guide_none())

### Review:
review_load <- review_data |>
  ggplot(aes(x = Assignee, fill = Assignee)) +
  geom_bar()                                 +
  ylab("Outcome datasets")                   +
  guides(fill = guide_none())

### Total:
total_load <- coding_data |> bind_rows(review_data) |>
  ggplot(aes(x = Assignee, fill = Assignee)) +
  geom_bar()                                 +
  ylab("Outcome datasets")                   +
  guides(fill = guide_none())

## By date:

### Coding:
coding_date <- coding_data |>
  count(Assignee, `Due date`) |>
  ggplot(aes(x = `Due date`, y = n, color = Assignee, group = Assignee)) +
  geom_freqpoly(stat = "identity") +
  geom_point() +
  ylim(0, 5) +
  ylab("Outcome datasets")

### Review:
review_date <- review_data |>
  count(Assignee, `Due date`) |>
  ggplot(aes(x = `Due date`, y = n, color = Assignee, group = Assignee)) +
  geom_freqpoly(stat = "identity") +
  geom_point() +
  ylim(0, 5) +
  ylab("Outcome datasets")

### Total:
total_date <- bind_rows(coding_data, review_data) |>
  count(Assignee, `Due date`) |>
  ggplot(aes(x = `Due date`, y = n, color = Assignee, group = Assignee)) +
  geom_freqpoly(stat = "identity") +
  geom_point() +
  ylim(0, 5) +
  ylab("Outcome datasets")


##----effort----

# Estimated efforts (in "relative points"):

## By team member:

### Coding:
coding_load <- coding_data |>
  count(Assignee, wt = points) |>
  ggplot(aes(x = Assignee, y = n, fill = Assignee)) +
  geom_col() +
  ylab("Effort (points)") +
  guides(fill = guide_none())

### Review:
review_load <- review_data |>
  count(Assignee, wt = points) |>
  ggplot(aes(x = Assignee, y = n, fill = Assignee)) +
  geom_col() +
  ylab("Effort (points)") +
  guides(fill = guide_none())

### Total:
total_load <- coding_data |> bind_rows(review_data) |>
  count(Assignee, wt = points) |>
  ggplot(aes(x = Assignee, y = n, fill = Assignee)) +
  geom_col() +
  ylab("Effort (points)") +
  guides(fill = guide_none())

## By date:

### Coding:
coding_date <- coding_data |>
  count(Assignee, `Due date`, wt = points) |>
  ggplot(aes(x = `Due date`, y = n, color = Assignee, group = Assignee)) +
  geom_freqpoly(stat = "identity") +
  geom_point() +
  ylab("Effort (points)")

### Review:
review_date <- review_data |>
  count(Assignee, `Due date`, wt = points) |>
  ggplot(aes(x = `Due date`, y = n, color = Assignee, group = Assignee)) +
  geom_freqpoly(stat = "identity") +
  geom_point() +
  ylab("Effort (points)")

### Total:
total_date <- bind_rows(coding_data, review_data) |>
  count(Assignee, `Due date`, wt = points) |>
  ggplot(aes(x = `Due date`, y = n, color = Assignee, group = Assignee)) +
  geom_freqpoly(stat = "identity") +
  geom_point() +
  ylab("Effort (points)")
