# Connect to our data
myPredictionData <- read.csv('~/Desktop/Exercise_Files/04_02/prediction-r.csv')

# Sum our classifications so we can see them 

# Output our column names for easy reference 

# Install our algorithm (the tree package)

# Bring our newly installed algorithm into our library of packages

# Configure our algorithm to create our tree
myDecisionTree <- tree(sales.classification ~ capita + drive.by.traffic + complimentary.establishments + competition + weather + unemployment.rate + var1 + var2 + var3, data=myPredictionData)

# Plot our tree so we can see the algorithms output

# Label our tree

# Prune our tree

# Plot our pruned tree

# Label our pruned tree 