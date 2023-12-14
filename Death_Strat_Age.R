install.packages("tidyverse")
library(tidyverse) 

NC_VS_2021 <- read_csv("project_source_data/North_Carolina_Vital_Statistics_2021.csv")

png("figures/NC_VS_2021_Death_Stratification_Age.png")

#Death by Age
p <- ggplot(NC_VS_2021, aes(x = AGEYRS)) +
  geom_histogram(stat = "count", binwidth = 10) +
  labs(x = "Age", y = 'Count') +
  scale_x_continuous(breaks = seq(0, max(NC_VS_2021$AGEYRS) + 10, 10)) +
  theme(axis.text.x = element_text()) +
  ggtitle("NC Death Distribution by Age at Death")

print(p)

p

dev.off();