## ---- set-location -------
# these are the directories that the project will be accessing... the structure will vary based on project needs 
# (I had certain data that could and could not be saved on the share drive due to PPI)
# the design is that one only needs to specify the main 'root' directories - in this case pathLaptop & pathShare
# and everything will fall under those two locations... Could just as easily only have one root directory location
# though it might be useful to have a folder storing GBs of R analysis files on your local computer for access times
# and space considerations on the share drive (if the raw data is safely backed up and the R analysis data would take
# a few days to rebuild I would assess that as low risk & decently secure)
#
# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# IF you are using git to manage your file make sure that the .gitignore file is correctly configured                 !
# you likely do not want to be backing up (or trying to) your actual data files to whatever git repo you are using... !
# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
#
pathLaptop = "/Users/path/to/your/folder/"
pathLaptop.rData = "Projects-rData/"
pathLaptop.clin = "Project-clinData/"

# this directory gets synced with the share drive every 30min. 
# outside of the renv library directory all files are 'released' onto the share drive...
pathShare = "/Volumes/path/to/your/share/folder/"
pathShare.out = "output/"
pathShare.csv = "csv/"

## ---- input-raw_data -------
# load in the clinical data from a sas file, gets loaded in as a data frame
clinData.raw = read.csv(paste0(pathLaptop, pathLaptop.clin, "Raw_data.csv"))

## ---- input-r_data -------
# read in the saved data (in R format) 
# commented out because there is no data...
#load(paste0(pathLaptop, pathLaptop.rData, 'R_data_filename.rda')) # clinData, clinData.labels
