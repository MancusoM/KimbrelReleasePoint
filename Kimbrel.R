#This Graph will look into the Horizontal and Vertical Change of Craig Kimbrel's release point through the 2021 Season 

#Downloading Required Packages
library(ggplot2)

year_data <- `savant_data.(81)`
year_data$game_date <- as.Date.factor(year_data$game_date)
print(year_data$game_date)
#Subsetting the date to before & after the trade deadline for potential future use 
after <- subset(year_data, game_date >= "2021-07-31")
before <-subset(year_data, game_date <= '2021-07-30')
#Printing of Plots
bg <- ggplot(year_data, aes(x= game_date, y = release_pos_x, color= release_pos_x)) + geom_point() + ggtitle ("Changing of Kimbrel's Horizontal Release Point") + ylab("Horizontal Release Point") 
bg
ag <- ggplot(year_data, aes(x= game_date, y = release_pos_z, color= release_pos_z)) + geom_point() +  ggtitle ("Changing of Kimbrel's Vertical Release Point") +ylab("Vertical Release Point")
ag

