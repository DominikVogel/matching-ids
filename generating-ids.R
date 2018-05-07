# Title         : Generating random identifiers
# Author        : Dominik Vogel
# ORCID         : 0000-0002-0145-7956
# Contact       : post@vogel-online.info
# Date          : 2018-05-07
# Version       : R version 3.5.0 (2018-04-23)
# Release       : 1.0
# License       : MIT License


# 0. Requirements -------------------------------------------------------------
# The script requires the packages random and writexl
# uncomment the following lines to install the packages
# install.packages("random", dep = TRUE)
# install.packages("writexl", dep = TRUE)

# 1. Define amount of identifiers and their length ----------------------------
amount <- 200 # amount of generated identifiers (max: 10,000)
length <- 4 # length of identifiers

# 2. Load necessary packages --------------------------------------------------
library(random)
library(writexl)

# 3. Generate identifier --------------------------
ids <- randomStrings(
  n = amount,
  len = length,
  digits = TRUE,
  upperalpha = TRUE,
  loweralpha = FALSE,
  unique = TRUE,
  check = TRUE
)

# 4. Exclude IDs with characters with high likelihood of confusion --------------------
# Attention: Reduces amount of identifiers by 55%-75%
ids <- ids[!grepl("1", ids), ]
ids <- ids[!grepl("O", ids)]
ids <- ids[!grepl("I", ids)]
ids <- ids[!grepl("J", ids)]
ids <- ids[!grepl("Q", ids)]
ids <- ids[!grepl("Z", ids)]
ids <- ids[!grepl("2", ids)]
ids <- ids[!grepl("7", ids)]

# 5. Export identifiers -------------------------
dir <- choose.dir(caption = "Select folder to save IDs")
write_xlsx(as.data.frame(ids), 
           path = paste0(dir, "/ids.xlsx"), 
           col_names = FALSE)

