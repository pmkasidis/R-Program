## Load Package
library("readxl")
library("writexl")sdfsdf

## Read Not Missing Data
input_data    <- read_excel("")
df_input_data <- data.frame(input_data)
df_input_data

## View Number Column And Row
set.seed(1234)
n_col <- length(colnames(df_input_data));n_col
n_row <- length(rownames(df_input_data));n_row

## Number Random
n_random       <- .....
number_cell    <- n_col * n_row;
n_random_p     <- (n_random/100)*number_cell
random_number  <- sample(number_cell, size=n_random_p);
random_number

## Check Column
col_random     <- random_number /n_row;
col_random_new <- round(col_random +0.4999999,0);
col_random_new

## Check Row
row_random     <- (col_random_new -1) * n_row;
row_random_new <- random_number - row_random ;
row_random_new

## Complete Missing Data
for (i in 1:n_random_p) {
  df_input_data[row_random_new[i], col_random_new[i]] <- NA
  }
df_input_data

## Save Data
write_xlsx(df_input_data,"")
