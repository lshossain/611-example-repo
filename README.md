#Data Set Name: NC Vital Statistics Data 2021
The purpose of this repository is to provide an introductory analysis to mortality data from the NC Vital Statistics Data in 2021. The dataset was accessed from dataverse at the following link: 
https://dataverse.unc.edu/dataset.xhtml?persistentId=doi:10.15139/S3/LFOTI8


#Accessing the Data and Report: 
In order to generate this report you'll need to clone this repository and build a docker container. To clone this repository, navigate to the repository homepage and click the green "<> Code" button. Here you'll copy the https link (https://github.com/lshossain/bios-611.git) and run this in Terminal. 
The command should be as follows: 

git clone https://github.com/lshossain/bios-611.git
cd bios-611

Next we'll build and run a docker container within terminal. Note that prior to this, docker should already be running and the specified port should not be in use. The container will be built using the following code: 

docker build . --build-arg USER_ID=$(id -u) -t 611

docker run -v $(pwd):/home/rstudio/work -e PASSWORD=vitalstatsnc -p 8787:8787 -it rocker/verse

From here, you can visit http://localhost:8787 and sign in using the following credentials: 

username: rstudio
password: vitalstatsnc 

Don't forget to set the working directory to the top location of the project by running the following code within RStudio: 
setwd("~/work/Desktop/final_project")

Then to access the report type into the terminal: 
make LH_Final_Report 




