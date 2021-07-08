## Load Package
library("mice")
library("readxl")
library("writexl")
set.seed(1234)

## Read Missing Data
read_data    <- read_excel("..........")
df_read_data <- data.frame(read_data)
read_data

## Imputation
mic_imp      <-  mice(df_read_data,m=5)
summary(mic_imp)
final_data_1 = complete(mic_imp,1)
final_data_2 = complete(mic_imp,2)
final_data_3 = complete(mic_imp,3)
final_data_4 = complete(mic_imp,4)
final_data_5 = complete(mic_imp,5)

## Save Data
write_xlsx(final_data_1,"..........")
write_xlsx(final_data_2,"..........")
write_xlsx(final_data_3,"..........")
write_xlsx(final_data_4,"..........")
write_xlsx(final_data_5,"..........")
