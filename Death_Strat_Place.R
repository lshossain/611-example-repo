install.packages("tidyverse")
library(tidyverse) 

NC_VS_2021 <- read_csv("project_source_data/North_Carolina_Vital_Statistics_2021.csv")

png("figures/NC_VS_2021_Death_Stratification_Place.png")

#Place of Death Distribution
custom_labels <- c("1 Inpatient", "2 Emergency Room", "3 Dead on Arrival", 
                   "4 Decedent's Home", "5 Hospice Facility", "6 Nursing Home", "7 Other", 
                   "Unknown")

p <- ggplot(NC_VS_2021, aes(x = factor(DPLACE))) +
  geom_histogram(stat = "count") +
  labs(x = "Place of Death", y = 'Count') +
  scale_x_discrete(labels = custom_labels) +  
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) + 
  ggtitle("NC Resident Death Location 2021") + 
  geom_text(stat = "count", aes(label = after_stat(count), vjust = -0.5), color = "red", position = position_stack(vjust = 0.5))


print(p)



dev.off();