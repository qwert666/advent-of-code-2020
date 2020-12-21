library(purrr)
library(stringr)

input <- readLines('./input.txt')

keep(input, .p = isTRUE, .f = ~ {
  input_line <- unlist(strsplit(.x, ":"))
  rule <- unlist(strsplit(input_line, " ", perl = TRUE))
  test <- rule[2]
  conditions <- unlist(strsplit(rule[1], "-"))
  min_val <- as.numeric(conditions[1])
  max_val <- as.numeric(conditions[2])
  
  password <- str_trim(input_line[2])
  
  valid <- str_count(password, test)
  
  valid >= min_val & valid <= max_val
} ) %>% length()

