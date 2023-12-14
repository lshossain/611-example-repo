install.packages("tidyverse")
library(tidyverse) 

NC_VS_2021 <- read_csv("project_source_data/North_Carolina_Vital_Statistics_2021.csv")

png("figures/Age_Histogram.png")

#Death by Age
p = ggplot(NC_VS_2021, aes(x=AGEYRS)) +
  geom_histogram(stat="count") +
  labs(x = "Age", y = 'Count') +
  theme(axis.text.x = element_text());

p

dev.off();