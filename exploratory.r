# import csv file 
myExploratoryData <- read.csv("C:\\Users\\Malee\\OneDrive\\Desktop\\Self Learning\\The Data Science of Marketing (LinkedIn)\\Exercise Files\\02_02\\exploratory-r.csv")
# get a quick snapshot of your data
head(myExploratoryData)

hist(myExploratoryData$cpa)
# shift the names to each row
row.names(myExploratoryData) <- myExploratoryData$keyword
# review that transformation 
head(myExploratoryData)
# transform into a matrix 
myDataMatrix <- data.matrix(myExploratoryData)

# generate our heatmap
heatmap(myDataMatrix, scale = "column", Rowv = NA, Colv = NA)

# generating different kinds of heatmaps
install.packages("d3heatmap")
library("d3heatmap")
d3heatmap(scale(myDataMatrix), colors = "Blues",
          k_row = 4, # Number of groups in rows
          k_col = 2, # Number of groups in columns
          Rowv = NA, Colv = NA, show_grid = TRUE
)
