#Import CSV
df<- read.csv("https://public.tableau.com/app/sample-data/HollywoodsMostProfitableStories.csv")
View(df)

#Tidiverse
install.packages("tidyverse")
library(tidyverse)

# Data Type
str(df)

#Summary
summary(df)


#Scatter plot
ggplot(df, aes(x=Lead.Studio, y=Rotten.Tomatoes..)) + geom_point()+ scale_y_continuous(labels = scales::comma)+coord_cartesian(ylim = c(0, 110))+theme(axis.text.x = element_text(angle = 90))

#Bar chart
ggplot(df, aes(x=Year)) + geom_bar()

# Check for missing values
colSums(is.na(df))

#Drop missing values
df1 <- df %>% drop_na()
colSums(is.na(df1))
View(df1)


#Scatter plot2
ggplot(df1, aes(x=Lead.Studio, y=Rotten.Tomatoes..)) + geom_point()+ scale_y_continuous(labels = scales::comma)+coord_cartesian(ylim = c(0, 110))+theme(axis.text.x = element_text(angle = 90))

#Bar chart2
ggplot(df1, aes(x=Year)) + geom_bar()

#Export clean data
write.csv(df1, "C:/Users/imich/Desktop/R/Assignment3_R&PowerBI_KristinK/clean_df.csv")
