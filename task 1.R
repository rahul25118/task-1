is.na(`KaggleV2.May.2016[1]`)          # Returns TRUE/FALSE matrix
sum(is.na(`KaggleV2.May.2016[1]`))     # Count of all NA values
colSums(is.na(`KaggleV2.May.2016[1]`)) # NA count per column

library(dplyr)
`KaggleV2.May.2016[1]` <- `KaggleV2.May.2016[1]` %>% distinct()  # Remove full duplicate rows

`KaggleV2.May.2016[1]`$Gender <- tolower(`KaggleV2.May.2016[1]`$Gender)

`KaggleV2.May.2016[1]`$Gender[`KaggleV2.May.2016[1]`$Gender %in% c("m", "male")] <- "Male"
`KaggleV2.May.2016[1]`$Gender[`KaggleV2.May.2016[1]`$Gender %in% c("f", "female")] <- "Female"

str(`KaggleV2.May.2016[1]`)         # Structure of the dataset
sapply(`KaggleV2.May.2016[1]`, class)  # Class of each column


