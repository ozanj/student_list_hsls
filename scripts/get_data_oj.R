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
library(haven)
library(labelled)
library(tidyr)
library(stringr)


### Directory Paths


  #stata dataset
  hsls_pub_dir <- file.path('.','..','hsls_public','stata')
  list.files(path = hsls_pub_dir)

  #documentation
  hsls_doc_dir <- file.path('.','..','hsls_public','documentation')
  list.files(path = hsls_doc_dir)

## -----------------------------------------------
## read in codebook for variable selection
## -----------------------------------------------

proj_message("Reading in variable list")
cw <- read_csv(file.path(hsls_doc_dir, "varlist_eepa.csv"),
               col_types = cols(varname = "c",
                                varlabel = "c",
                                vartype = "c",
                                round = "c",
                                type = "c",
                                restricted = "c",
                                reserve = "i",
                                .default = "i"))


## vector of variables to use
keep_vars <- cw %>%
    filter(keep == 1) %>%
    pull(varname)

## vector of factor variables
factor_vars <- cw %>%
    filter(keep == 1, is_factor == 1) %>%
    pull(varname)

## missing concordance
cw_miss_vars <- cw %>%
    filter(keep == 1, !is.na(reserve)) %>%
    select(varname, reserve)

## vector of variables with missing values to fix
miss_vars <- cw_miss_vars %>% pull(varname)

## -----------------------------------------------
## read in SCHOOL file
## -----------------------------------------------

df_school <- read_dta(file.path(hsls_pub_dir, "HSLS_09_SCHOOL_v1_0.dta"))

# replace upper case variable names with lower case variable names
  #names(df_school) <- tolower(names(df_school))
  #names(df_school) <- toupper(names(df_school))
  
df_school %>% glimpse()


## -----------------------------------------------
## read in student file
## -----------------------------------------------


df_stu_all <- read_dta(file.path(hsls_pub_dir, "hsls_17_student_pets_sr_v1_0.dta")) %>% select(all_of(keep_vars))
#names(df_stu_all) <- tolower(names(df_stu_all))
#names(df_stu_all) <- toupper(names(df_stu_all))

# Look for variables based on variable names and variable labels
  #lookfor(data=df_els_stu_all, 'real',labels = TRUE, ignore.case = TRUE, details = TRUE)
  lookfor(data=df_stu_all, 'X2MTHINT',labels = FALSE, ignore.case = TRUE, details = TRUE)
  
  
# GOT THROUGH LINE 340 OF varlist_eepa.csv, HS transcript student-level composites
df_stu <- df_stu_all %>% select(all_of(keep_vars))

%>%
# universe
  # x4univ1, 5 characters long
    # position 1 = base year (2009, students = 9th grade)
    # position 2 = followup 1 (2012, students = 12th grade)
    # position 3 = 2013 update  (2013)
    # position 4 = high school transcript (data collected in 2013-14)
    # position 5 = followup 2 (2016)
  # keep students who completed base year, f1, and high school transcript; regardless of whether completed U13 update
  filter(x3univ1 %in% c('1111','1101'))

df_stu %>% var_label()

df_stu %>% count(x4univ1) %>% print(n=40)
df_stu %>% count(x3univ1) %>% print(n=40)



### Read in Codebook to Select Variables [see Ben's script: https://github.com/btskinner/civic_returns_pf_rep/blob/main/scripts/make_data.r]
    
# create vector of variable names to keep, and create upper case and lower case versions of this vector  
keepvars <- c('STU_ID','X4UNIV1','X3UNIV1','X1SEX','X2SEX','X1RACE','X2RACE','X1DUALLANG','X1STDOB','X1TXMTH','X1MACC','X1PARRESP','X1P1RELATION','X1PAR1EDU','X1PAR1EMP','X1PAR1OCC2','X1PAR1RACE','X1P2RELATION','X1PAR2EDU','X1PAR2EMP','X1PAR2OCC2','X1PAR2RACE','X1PAREDU','X1HHNUMBER','X1FAMINCOME','X1POVERTY','X1POVERTY130','X1POVERTY185','X1SES','X1STU30OCC2','X1STUEDEXPCT','X1PAREDEXPCT','X1CONTROL','X1LOCALE','X1REGION','X2ENROLSTAT','X2EVERDROP','X2DROPSTAT','X2SAMEPAR1','X2SAMEPAR2','X2NUMHS','X2TXMTH','X2MACC','X2P1RELATION','X2PAR1EDU','X2PAR1EMP','X2PAR1OCC2','X2PAR1RACE','X2P2RELATION','X2PAR2EDU','X2PAR2EMP','X2PAR2OCC2','X2PAR2RACE','X2PAREDU','X2HHNUMBER','X2POVERTY','X2POVERTY130','X2POVERTY185','X2SES','X2STU30OCC2','X2STUEDEXPCT','X2PAREDEXPCT','X2CONTROL','X2LOCALE','X2REGION','X2SCHOOLCLI','X4EVRATNDCLG','X4PS1START'
            )

keepvars_lower <- tolower(keepvars)
keepvars_lower

