d=data.frame(

view_count=channels$view_count,
subscribers=channels$subscriber_count,
video_count=channels$video_count,
age=channels$age_of_channel

)

d1=scale(d)

View(d1)


channels$Column2=as.factor(channels$Column2)
dd=data.frame(d1,channels$Column2,channels$channel_title)


View(dd)


#K means clustering


# convert channel_title to a factor variable
#$channel_title <- as.factor(d2$channel_title)


# create binary variables using one-hot encoding
library(caret)
encoded_data <- model.matrix(~ . - 1, dd)

# perform k-means clustering with 3 clusters
set.seed(123) # for reproducibility
kmeans_result <- kmeans(encoded_data, centers = 3)

# add the cluster assignment to the original data frame
dd$cluster <- kmeans_result$cluster

# view the final data frame
View(dd)

a=which(dd$cluster==1)
a

d_11=d[c(a),]
d_11
View(d_11)


d_1=dd[c(a),]
d_1
View(d_1)


b=which(dd$cluster==2)
b
d_2=dd[c(b),]
View(d_2)

b=which(dd$cluster==2)
b
d2=d[c(b),]
d2

View(d2)



c=which(dd$cluster==3)
c
d3=dd[c(c),]
d3
View(d3)

c=which(dd$cluster==3)
c
d_3=d[c(c),]
View(d_3)





View(d1)
View(d2)
View(d3)
table(dd$cluster)
plot(d1)

library(cluster)
plotcluster(d1,kmeans_result$cluster,xlab="Component 1",ylab="Component 2",main="Cluster Plot")


cp=clusplot(d1,kmeans_result$cluster)
identify(d1)


#elbow plot

# load the factoextra package
library(factoextra)
install.packages("factoextra")

# perform k-means clustering with up to 10 clusters
set.seed(123) # for reproducibility
kmeans_obj <- kmeans(encoded_data, centers = 10, nstart = 25)

# plot the elbow curve
fviz_nbclust(encoded_data, kmeans, method = "wss") +
  ggtitle("Elbow curve for k-means clustering")


