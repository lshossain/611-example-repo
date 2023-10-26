install.packages("tidyverse")
library(tidyverse) 

NC_VS_2021 <- read_csv("project_source_data/North_Carolina_Vital_Statistics_2021.csv")

png("figures/Sex_Histogram.png")

#Deaths by Sex
ggplot(NC_VS_2021, aes(x=SEX)) +
  geom_histogram(stat="count") +
  labs(x = "Sex", y = 'Count') +
  theme(axis.text.x = element_text());

dev.off();

