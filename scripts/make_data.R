################################################################################
## [ PROJ ] < student list hsls >
## [ FILE ] < make_data.R >
## [ AUTH ] < Ozan Jaquette >
## [ DESC ] < Create HSLS Dataset >
################################################################################

### Read in Codebook to Select Variables [see Ben's script: https://github.com/btskinner/civic_returns_pf_rep/blob/main/scripts/make_data.r]


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
#library(survey)


### Directory Paths
getwd()
list.files()

hsls_pub_dir <- file.path('.','..','hsls_public','stata') #stata dataset
  list.files(path = hsls_pub_dir)

hsls_doc_dir <- file.path('.','data','hsls','documentation') #documentation
  list.files(path = hsls_doc_dir)
  
scripts_dir <- file.path('.','scripts') #documentation
  list.files(path = scripts_dir)
  
### Script of utility functions
  source(file.path(scripts_dir, "utils.r"))

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

  #df_school <- read_dta(file.path(hsls_pub_dir, "HSLS_09_SCHOOL_v1_0.dta"))

  #df_school %>% glimpse()


## -----------------------------------------------
## read in student file
## -----------------------------------------------

df_stu_all <- read_dta(file.path(hsls_pub_dir, "hsls_17_student_pets_sr_v1_0.dta"))
  #%>% select(all_of(keep_vars))

# Look for variables based on variable names and variable labels
  #lookfor(data=df_els_stu_all, 'real',labels = TRUE, ignore.case = TRUE, details = TRUE)
  #lookfor(data=df_stu_all, 'PSU',labels = FALSE, ignore.case = TRUE, details = TRUE)

#df_stu_all %>% rename_all(toupper) %>% filter(X3UNIV1 %in% c('1111','1101')) %>% count(X3TGPAACAD)


df_stu <- df_stu_all %>% rename_all(toupper) %>% select(all_of(keep_vars)) %>%
# universe
  # x4univ1, 5 characters long
    # position 1 = base year (2009, students = 9th grade)
    # position 2 = followup 1 (2012, students = ?11th grade? or 12th grade?)
    # position 3 = 2013 update  (2013)
    # position 4 = high school transcript (data collected in 2013-14)
    # position 5 = followup 2 (2016)
  filter(X3UNIV1 %in% c('1111','0111')) %>%
  #filter(X3UNIV1 %in% c('1111','1101')) %>%
  ## convert negative numbers to proper NA
  val_to_na(miss_vars, cw_miss_vars, varname, reserve) %>% 
  ## convert factor variables to actual factors, including NA as level
  #mutate_at(vars(factor_vars), ~ var_to_factor(.)) %>%
  ## lower names
  rename_all(tolower)  %>%
  ## collapse Hispanic categories into one (5 --> 4)
  #mutate_at(vars(contains("race")), ~ ifelse(as.numeric(.) == 5, 4, .))
  #create analysis vars
  mutate(
    hsgradyr = recode(as.integer(s2grd1112),`1` = 2015L,`2` = 2014L,`3` = 2013L,`4` = 2012L, .default = NA_integer_),
    # vars for number of times taken: psat or plan; sat or act; ap exam, from followup 1
    across(.cols = matches("s2.+num"), ~ recode(.,`4`=0)),
    #collapse hispanic categories into one (4 ---> 5) for x2race
    across(.cols = contains("race"), ~ recode(.,`4`=5))
  ) %>%
  set_variable_labels(
    hsgradyr = "expected year (spring) of HS graduation, from f1 student instrument (2012)"
  )


###############
  # add value labels to categorical variables you created
    set_value_labels(
      f2enroll0405 = c('no' = 0,'yes' = 1),
      f2enroll0506 = c('no' = 0,'yes' = 1),
      f2intern0405 = c('no' = 0,'yes' = 1),
      f2intern0506 = c('no' = 0,'yes' = 1),
      dev_math_01 =  c('no' = 0,'yes' = 1),
      f1race_v2 = c('white'=1, 'api'=2, 'black'=3, 'latinx'=4, 'native'=5, 'multi'=6),
      dev_math_cat4 =  c('0 courses' = 1,'1 course' = 2, '2 courses' = 3, '3+ courses' = 4),
      dev_math_cat3 =  c('0 courses' = 1,'1 course' = 2, '2+ courses' = 3)
      ) 

########### start creating analysis variables

#START MAKING FILTERS
  df_stu %>% mutate(in_list = if_else(hsgradyr ==2013,1,0)) %>% count(hsgradyr, in_list) %>% mutate(pfreq = (n / sum(n)) * 100)
  
  df_stu %>% mutate(in_list = if_else(hsgradyr ==2013,1,0)) %>% filter(in_list ==1) %>% count(x2race) %>% mutate(pfreq = (n / sum(n)) * 100)
  df_stu %>% mutate(in_list = if_else(hsgradyr ==2013,1,0)) %>% filter(in_list ==0) %>% count(x2race) %>% mutate(pfreq = (n / sum(n)) * 100)
  df_stu %>% mutate(in_list = if_else(hsgradyr ==2013,1,0)) %>% filter(is.na(in_list)==1) %>% count(x2race) %>% mutate(pfreq = (n / sum(n)) * 100)


df_stu_all %>% filter(X3UNIV1 %in% c('1111','0111')) %>% 
  select(W3W1W2STUTR,W3W2STUTR) %>%
  summarize_all(
    .funs = list(
      avg = ~ mean(., na.rm = TRUE),
      min = ~ min(., na.rm = TRUE),
      max = ~ max(., na.rm = TRUE),
      n_nonmiss = ~ sum(!is.na(.)),
      n_miss = ~ sum(is.na(.))
    )
  )


