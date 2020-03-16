# Connect to our data
myRegressionData <- read.csv("C:\\Users\\Malee\\OneDrive\\Desktop\\Self Learning\\The Data Science of Marketing (LinkedIn)\\Exercise Files\\03_02\\regression-r.csv")

# Plot our data (broadcast & sales)
plot(myRegressionData$BROADCAST, myRegressionData$NET.SALES)

# Fit a line
myLM <- lm(myRegressionData$NET.SALES ~ myRegressionData$BROADCAST)

# Visualize the line
lines(myRegressionData$BROADCAST, myLM$fitted)

# Show our coefficients
myLM$coefficients
