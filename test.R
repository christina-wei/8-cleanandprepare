class(stock_data$symbol) == "character"
class(stock_data$date) == "Date"
class(stock_data$return) == "numeric"

nchar(unique(stock_data$symbol)) == 3 

min(stock_data$return) >= -0.5
max(stock_data$return) <= 0.5

# No N/As in symbol
sum(is.na(stock_data$symbol)) == 0
sum(is.na(stock_data$return)) < 50

sum(stock_data$symbol %in% c("SPX")) == 0