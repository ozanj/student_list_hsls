################################################################################
## [ PROJ ] < student list hsls >
## [ FILE ] < get_data.R >
## [ AUTH ] < Karina Salazar >
## [ DESC ] < Create HSLS Dataset >
################################################################################

### Settings
rm(list = ls())
options(max.print=1000)

### Libraries

library(tidyverse)
library(lubridate)
library(labelled)
library(tidyr)
library(stringr)


### Directory Paths

    #data folder
    data_dir <- file.path('.', 'data/pets/HSLS_2017_PETS_SR_v1_0_R_Datasets')
    list.files(path = data_dir)
    
    
### Read in Codebook to Select Variables [see Ben's script: https://github.com/btskinner/civic_returns_pf_rep/blob/main/scripts/make_data.r]
    
    

    
### Read in Student File
    
    # load data
    hsls <- load(file.path(data_dir, ""))
        