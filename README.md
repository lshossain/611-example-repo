First Commit Data Set Name: NC Vital Statistics Data 2021

Understanding the Data: 
The North Carolina State Center for Health Statistics (NCSHS) within the North Carolina Department of Health and Human Services collects and reports a multitude of data on topics such as cancer, minority health,and birth defects. NCSHS is also partnered with states nationwide to provide surveillance data 
which includes the Behavioral Risk Factor Surveillance System (BRFSS), Child Health Assessment Monitoring Program (CHAMP), and Pregnancy Risk Assessment Monitoring System (PRAMS). 

Scope of this Report: 
Annually, as a part of vital statistics reports, NCSHS also reports mortality data that dates back to 1968. Here we will be analyzing mortality data from 2021 which includes the following variables: 

Place of Death 
County of Occurrence
City of Occurrence
Decedent's Residence County 
Decedent's Residence City 
Sex 
Race of Decedent 
Age at Death 
Decedent's Education 
Place of Injury (if injury death)
Veteran Status
Death Month 
Death Date 
Death Year

Accessing the Data and Report: 
In order to generate this report you'll need to clone this repository and build a docker container. To clone this repository, navigate to the repository homepage and click the green "<> Code" button. Here you'll copy the https link (https://github.com/lshossain/bios-611.git) and run this in Terminal. 
The command should be as follows: 

git clone https://github.com/lshossain/bios-611.git
cd bios-611

Next we'll build and run a docker container within terminal. Note that prior to this, docker should already be running. The container will be built using the following code: 

docker build . --build-arg USER_ID=$(id -u) -t 611

docker run -v $(pwd):/home/rstudio/work -e PASSWORD=vitalstatsnc -p 8787:8787 -it rocker/verse



