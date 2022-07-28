####################
# Data
####################
# main data
sales.list <- c(545, 524, 640, 442, 479, 820, 391, 410, 666, 584, 598, 720, 346, 684, 778, 593, 786, 1171, 677, 750, 491, 611, 889, 754, 626, 873, 564, 613, 1056, 1033, 557, 603, 526, 826, 584, 453, 644, 665, 725, 591, 837, 1026, 605, 559, 573, 914, 627, 557, 577, 663, 774, 752, 652, 893, 787, 477, 570, 762, 637, 865, 801, 636, 770, 764, 736, 963, 862, 555, 720, 676, 820, 822, 569, 635, 778, 145, 479, 1702, 554, 525, 413, 559, 1153, 1093)
start.date <- c(2014,1)
end.date <- c(2020,12)
x <- data.frame("x" = 1:84, "SKU" = c("Total"), "Sales" = sales.list)

freq.num = 12
h.num = 12
#
install.packages("forecast")
library(forecast)
train <- ts(x[,"Sales"]
            , start = start.date
            , end = end.date
            , frequency = freq.num)


# forecast
library(forecast)
        f.arima <- forecast(auto.arima(train), h = h.num)
        
df <- f.arima$mean
df
