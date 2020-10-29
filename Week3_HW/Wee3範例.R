library(tidyverse)
Data <- read_csv('TWSE_Stock Data_2012-2017.csv')
library(tidyverse)
#前述步驟讀資料
Stock_Price <- as_tibble(read_csv("TWSE_Stock Data_2012-2017.csv", col_types = cols(security_id = col_character()) ))

#gather 函數
Stock_Price_colname <- colnames(Stock_Price)
A <- Stock_Price %>% gather(key = "time", value = "price", Stock_Price_colname[3:ncol(Stock_Price)])

#spread函數
Stock_Price <- A %>% spread(type, price)

#separate函數
Stock_Price$time <- as.Date(Stock_Price$time, format = "%Y/%m/%d")
Stock_Price %>% separate(col = time, into = c("year", "month", "day"), sep = "-", convert = T)

