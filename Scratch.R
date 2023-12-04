install.packages("tidyverse")
library(tidyverse) 
install.packages("matlab")
library(matlab)
NC_VS_2021 <- read_csv("project_source_data/North_Carolina_Vital_Statistics_2021.csv")

imagesc(NC_VS_2021 %>% as.matrix())

#Deaths by Sex
ggplot(NC_VS_2021, aes(x=SEX)) +
  geom_histogram(stat="count") +
  labs(x = "Sex", y = 'Count') +
  theme(axis.text.x = element_text());

#Deaths by Race
ggplot(NC_VS_2021, aes(x=AGEYRS)) +
  geom_histogram(stat="count") +
  labs(x = "Age (Years)", y = 'Count') +
  theme(axis.text.x = element_text());

