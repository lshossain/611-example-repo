.PHONY: clean 

clean: 
	rm -rf figures 
	rm -rf LH_Final_Report.html
	mkdir -p figures
	
	
figures/NC_VS_2021_Death_Stratification_Sex.png: ./project_source_data/North_Carolina_Vital_Statistics_2021.csv\
	Death_Strat_Sex.R 
	Rscript Death_Strat_Sex.R 
		
figures/NC_VS_2021_Death_Stratification_Age.png: ./project_source_data/North_Carolina_Vital_Statistics_2021.csv\
	Death_Strat_Age.R 
	Rscript Death_Strat_Age.R 
	
figures/NC_VS_2021_Death_Stratification_Month.png: ./project_source_data/North_Carolina_Vital_Statistics_2021.csv\
	Death_Strat_Month.R 
	Rscript Death_Strat_Month.R 

figures/NC_VS_2021_Death_Stratification_Tobacco.png: ./project_source_data/North_Carolina_Vital_Statistics_2021.csv\
	Death_Strat_Tobacco.R 
	Rscript Death_Strat_Tobacco.R 

figures/NC_VS_2021_Death_Stratification_Place.png: ./project_source_data/North_Carolina_Vital_Statistics_2021.csv\
	Death_Strat_Place.R 
	Rscript Death_Strat_Place.R 
		
#figures/explained_variance.png: ./project_source_data/NC_VS_2021_Num.xlsx\
	LH_DR_HW.R 
	#Rscript LH_DR_HW.R
	
LH_Final_Report.html:project_source_data/North_Carolina_Vital_Statistics_2021.csv LH_Final_Report.rmd
	Rscript -e "rmarkdown::render('LH_Final_Report.rmd', output_format = 'html_document', output_dir = 'finalreport')"
	
	