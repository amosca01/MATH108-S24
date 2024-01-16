library(tidyverse)

movies <- read_csv("movies.csv")

# bar plot frequencies 
ggplot(movies, aes(x = content_rating)) + 
  geom_bar(fill="lightgreen") + 
  theme_light() +
  theme(text = element_text(size=20))
  

# bar plot relative frequencies 
ggplot(movies, aes(x = content_rating, y = ..prop.., group = 1)) + 
  geom_bar(fill="lightgreen") + 
  theme_light() +
  theme(text = element_text(size=20)) + 
  ylim(0, 1)

#histogram IMBD movie rating 
ggplot(movies, aes(x = imdb_score)) + 
  geom_histogram(aes(y = ..density..), color="darkgreen", fill="white") + 
  geom_density(alpha = 0.2, fill="lightgreen") + 
  theme_light() +
  theme(text = element_text(size=20)) 
  
ggplot(movies, aes(x = imdb_score)) + 
  #geom_histogram(aes(y = ..density..), color="white", fill="white") + 
  geom_density(alpha = 0.2, fill="lightgreen") + 
  theme_light() +
  theme(text = element_text(size=20)) 
  
  