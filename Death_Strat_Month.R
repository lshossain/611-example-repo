install.packages("tidyverse")
library(tidyverse) 

NC_VS_2021 <- read_csv("project_source_data/North_Carolina_Vital_Statistics_2021.csv")

png("figures/NC_VS_2021_Death_Stratification_Month.png")

#Death by Month
months_labels <- c("January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December")

p <- ggplot(NC_VS_2021, aes(x = DHTMO)) +
  geom_histogram(stat = "count") +
  labs(x = "Month", y = 'Count') +
  scale_x_continuous(breaks = 1:12, labels = months_labels) +
  theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
  ggtitle("North Carolina Deaths by Month in 2021")

print(p)

dev.off();