# 1. create a clear directory structure
# 2. Set up and use Git
# 3. Add the raw data
# 4. Write the code to perform the analysis
# 5. Push the button and run it all


setwd("C:/Users/Shaun Parimoo/Desktop/BioStatistics/FinalProj/") # Set this to be your own WD
data <- read.csv("C:/Users/Shaun Parimoo/Desktop/BioStatistics/FinalProj/data/Data1.csv") # I used full path here to set the var data

#Optional Make sure the data is viewable
# View(data)

data$logMarketCap <- log(data$Market.Cap) # to make the relationship linear insted of curved
plot(Total.Return.Y.2 ~ logMarketCap, data = data)
reg1 <- lm(Total.Return.Y.2 ~ logMarketCap, data = data)
summary(reg1)
abline(reg1)
