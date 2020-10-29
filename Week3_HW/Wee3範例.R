library(tidyverse)
<<<<<<< HEAD
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
Stock_Price <- Stock_Price %>% separate(col = time, into = c("year", "month", "day"), sep = "-", convert = T)

#整理索引
a <- strsplit(Stock_Price$security_id, split = " ") %>% unlist(.,recursive = F)
a <- a[seq(from = 1, to = 118560, by = 2)]
Stock_Price$security_id <- as.integer(a)

Stock_Price %>% filter(security_id == 1101 & month == 5)
=======
reader('TWSE_Stock Data_2012-2017.csv')
a <- c(5,4,3,2,1)
>>>>>>> 6ef9a8b5cd419e99dce74eabe9dca865f8927c3f
