install.packages("tidyverse")
library(tidyverse) 

NC_VS_2021 <- read_csv("project_source_data/North_Carolina_Vital_Statistics_2021.csv")

png("figures/NC_VS_2021_Death_Stratification_Tobacco.png")

#Death Stratified by Tobacco Usage
code_labels <- c("C" = "Not on Certificate", "N" = "No", "P" = "Probably", "U" = "Unknown", "Y" = "Yes")

p <- ggplot(NC_VS_2021, aes(x = TOBACCO)) +
  geom_histogram(stat = "count") +
  labs(x = "Tobacco Usage Status", y = 'Count') +
  scale_x_discrete(labels = code_labels) +  
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +  
  ggtitle("Death stratified by Tobacco Usage Status")

print(p)

dev.off();