.PHONY: clean 

clean: 
	rm -rf figures 
	mkdir -p figures
	
figures/NC_VS_2021_Death_Stratification_Sex.png: ./project_source_data/North_Carolina_Vital_Statistics_2021.csv\
	Death_Strat_Sex.R 
		Rscript Death_Strat_Sex.R 
		
figures/NC_VS_2021_Death_Stratification_Sex.png: ./project_source_data/North_Carolina_Vital_Statistics_2021.csv\
	Death_Strat_Age.R 
		Rscript Death_Strat_Age.R 