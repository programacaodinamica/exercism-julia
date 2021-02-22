using Dates

add_gigasecond(date::DateTime) = date + Second(10^9)
