managers_data <- read.csv("managers.csv")
managers_data

new_managers_data <- read.csv("moredata.csv")
more_data
str(new_managers_data)
str(new_managers_data)
str(managers_data)

names (managers_data)
names(new_managers_data)

include_list <- new_managers_data[c(3,4,6:12)]
str(include_list)
str(managers_data)

managers_data <- managers_data[c(2:10)]
str(managers_data)
rbind(managers_data, include_list)

date_format <- "%m/%d/%y"

new_date_format <- "%d/%m/%y"
formatted_date <- format(as.Date(include_list$Date, format = date_format), new_date_format)
formatted_date
 
formatted_date <- as.Date(include_list$Date, format = "%m/%d/%Y")
formatted_date
class(formatted_date)

include_list$Date <- formatted_date
str(include_list)
old_formatted_date <- as.Date(managers_data$Date, format = "%m/%d/%y")
old_formatted_date
class(old_formatted_date)
managers_data$Date<-old_formatted_date
str(managers_data)
final_data <- rbind(managers_data, include_list)
