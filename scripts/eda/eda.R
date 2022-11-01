################################################################################
## [ PROJ ] < student list hsls >
## [ FILE ] < eda.R >
## [ AUTH ] < Ozan Jaquette >
## [ DESC ] < exploratory data analysis and experimentation, hsls >
## [ INIT ] < 10/24/2022 >
################################################################################

### Libraries

library(survey)
library(srvyr)
#install.packages('srvyr')
library(tidymodels)

## -----------------------------------------------
## EXPERIMENTING W/ SURVEY PACKAGE
## -----------------------------------------------


  # reading about weights
    # Tutorial about survey package
      # stats ucla: https://stats.oarc.ucla.edu/r/seminars/survey-data-analysis-with-r/
    # different kinds of weights [by Lumley]
      # precision weights 
        # the ones that show up in the classical theory of weighted least squares. These describe the precision (1/variance) of observations. An observation with a weight of 10 was classically an average of 10 replicate observations, so it has 10 times the precision of an observation with a weight of 1.
      # frequency weights
        # the ones that show up in categorical data analysis. These describe cell sizes in a data set, so a weight of 10 means that there are 10 identical observations in the dataset, which have been compressed to a covariate pattern plus a count
      # sampling weights 
        # the ones that show up in classical survey sampling theory. These describe how the sample can be scaled up to the population. Classically, they were the reciprocals of sampling probabilities, so an observation with a weight of 10 was sampled with probability 1/10, and represents 10 people in the population. In real life, these are typically more complicated than just sampling probabilities, but they play the same role of trying to rescale the sample distribution to match the population distribution
        # think this is what we should be thinking of

    # skinner modeling tutorial
      # https://www.btskinner.io/rworkshop/modules/modeling.html


  # reading on tidymodels + weights
    # https://www.tidyverse.org/blog/2022/05/case-weights/
    # https://parsnip.tidymodels.org/reference/case_weights.html
    # https://hardhat.tidymodels.org/reference/frequency_weights.html
    # https://hardhat.tidymodels.org/reference/importance_weights.html



  # weight variable
    # note: NCES documentation refers to these as analytic weights" but I think Lumley would call them "sampling weights"
    # w3w2stutr = W3 High school transcript, first follow-up, and 2013 Update weight
      # alternative weight var: w3w1w2stutr = W3 High school transcript, base year, first follow-up, and 2013 Update weight
  # stratum
    # strat_id RESTRICTED
  # primary sampling unit (psu)
    # psu RESTRICTED



#using srvyr package
srvyr_df <- df_stu %>% as_survey(
  ids = ~stu_id,
  weight = w3w2stutr,
  type = 'BRR',
  repweights = matches('w3w2stutr[0-9]+')
)
  # Note that arrange() is not available, because the srvyr object expects to stay in the same order. Nor are two-table verbs such as full_join(), bind_rows(), etc. available to srvyr objects either because they may have implications on the survey design. If you need to use these functions, you should use them earlier in your analysis pipeline, when the objects are still stored as data.frames.

  srvyr_df %>% names()
  srvyr_df[['variables']] %>% str() # this is the dataframe
  
  
################# 
################# EXPERIMENTING W/ SURVEY PACKAGE
####################### 
################# 

# initial approach
#svy_df <- svydesign(
#  ids = ~stu_id, # ~0, # ~stu_id,  
#  weight = ~w3w2stutr, 
#  #strata = ~NULL, 
#  nest = FALSE, 
#  data = df_stu
#)
  #survey.lonely.psu = "adjust", 

# approach used by skinner/doyle in lowinc_enroll_mrp_rep
svy_df <- svydesign(
  ids = ~stu_id, # ~0, # ~stu_id,  
  weight = ~w3w2stutr, 
  data = df_stu %>% filter(!is.na(s2psatnum01) & !is.na(s2satnum01) & !is.na(s2apexamnum01)),
  repweights = 'w3w2stutr[0-9]+',
  type = 'BRR'
)

svy_df %>% str()
summary(svy_df)

svytable(~x2race, design = svy_df)
  #27779.17+146705.04+552625.45+888208.91+319699.50+18665.23+2104551.57 # = 4,058,235 ; 4058235
svytable(~x2race, design = svy_df, Ntotal = 100)


svytable(~x2race+s2psatnum01, design = svy_df)
psat_temp


svytotal(~x2race, design = svy_df)
svytotal(~interaction(x2race,s2psatnum01), design = svy_df)
svytotal(~interaction(x2race,s2psatnum01), design = svy_df, deff = TRUE)

psat_survey <- svytotal(~interaction(x2race,s2psatnum01), design = svy_df)
psat_survey
psat_survey %>% attributes()
%>% length()

psat_survey
psat_survey[12]


df_stu %>% count()
df_stu %>% filter(!is.na(s2psatnum01) & !is.na(s2satnum01) & !is.na(s2apexamnum01)) %>% count()


#### playing around w/ functions from survey package

svymean(~x2txmtscor, design = svy_df)
svymean(~sat_temp, design = svy_df, na.rm = TRUE)

# proportions for binary variables
svyciprop(~I(x2sex=="Female"), design = svy_df, na.rm = TRUE, method = "likelihood")
svyciprop(~I(x2sex=="Female"), design = svy_df, na.rm = TRUE, method = "logit")
svyciprop(~I(x2sex=="Female"), design = svy_df, na.rm = TRUE, method = "xlogit")

# proportions for binary variables, applied to race
svyciprop(~I(x2race=="black"), design = svy_df, na.rm = TRUE, method = "likelihood") %>% str()

df_stu %>% count(x2race)

# svy total calculates sum total of va;ies across obs for a variable; 
  # but if the var is a factor variable, calculates number of observations per factor level
svytotal(~x2txmtscor, design = svy_df, na = TRUE) # continuous variable
svytotal(~x2race, design = svy_df, na = TRUE) # factor variable

# svytable to calculate descriptive statistics for categorical variables
svytable(~x2sex, design = svy_df) # one-way
svytable(~x2race, design = svy_df) # one-way

#use + to get two-way tabs
svytable(~x2sex+s2psatnum01, design = svy_df) # 
svytable(~x2race+s2psatnum01, design = svy_df) # 

#different syntax to get same output
svytable(~interaction(x2race,s2psatnum01), design = svy_df) # 
svytable(~interaction(x2race,s2psatnum01), design = svy_df) %>% str()

# FRIDAY 10/28 START WITH SECTION "SUBPOPULATION ANALYSIS" OF THIS WEBSITE
  #https://stats.oarc.ucla.edu/r/seminars/survey-data-analysis-with-r/

################# 
################# CREATING DATA FRAMES OF DESCRIPTIVE STATISTICS AND GRAPHING THEM USING GGPLOT, 
####################### FOLLOWING EXAMPLE OF GEODEMOGRAPHIC REPORT, 10% ZIP CODE ANALYSIS
################# 



psat_temp <- df_stu %>% 
  # filter variables cannot be missing
  #filter(!is.na(s2psatnum01)) %>%
  filter(!is.na(s2psatnum01) & !is.na(s2satnum01) & !is.na(s2apexamnum01)) %>%
  # group_by 0/1 filter variable and race
  group_by(s2psatnum01,x2race) %>% # note: before summarize one obs per student and grouped by filter var and race
  # create count of number of obs per 0/1 filter category and race category
  summarize(
    count = n()
  ) %>% # note: note after summarize one obs per student and grouped by filter var [but not race]
  mutate(
    pct = count/sum(count) # note: sum(count) is done separately by filter var cuz data grouped by filter var
  ) %>%
  ungroup()

psat_temp %>% count(s2psatnum01)

psat_temp_figure_totals <- psat_temp %>%
  mutate(
    filter = recode_factor(
      s2psatnum01,
      'no' = 'Excluded',
      'yes' = 'Included'      
    )
  ) %>%
  group_by(filter) %>%
  summarise(
    count = sum(count)
  ) %>% 
  ungroup()
psat_temp_figure_totals

# colors crystal used for geodemographic report
color_palette <- c('#46a69e', '#7ec7b8', '#b9efe6', '#bf7bb2', '#9e508a', '#537ec4', '#344273', '#fdc3bb', '#fa634b')
extra_colors <- c('#b5b5b5', '#767676')
color_text <- 'white'    

psat_temp %>% 
  mutate(
    x2race = recode_factor(
      x2race,
      'nhpi' = 'NH/PI',
      'aian' = 'AI/AN',
      'multi' = 'Multiracial',
      'hisp' =  'Latinx',
      'black' = 'Black',
      'asian' = 'Asian',
      'white' = 'White'
    ),
    filter = recode_factor(
      s2psatnum01,
      'no' = 'Excluded',
      'yes' = 'Included'
    )
  ) %>% 
  ggplot(aes(y = filter, x = pct, fill = x2race)) +
  geom_bar(position = 'stack', stat = 'identity', alpha = 0.8) + 
  geom_text(mapping = aes(label = if_else(pct > 0.02, as.character(round(pct * 100)), '')), size = 2, position = position_stack(vjust = 0.5)) +
  geom_text(data = psat_temp_figure_totals, mapping = aes(x = 1, fill = NULL, label = str_c('N=', prettyNum(count, ','))), size = 2, hjust = -0.1) +
  scale_fill_manual(values = rev(color_palette[1:7]), name = 'Race') +
  scale_x_continuous(expand = expansion(mult = c(0, 0.04)), limits = c(0, 1.15)) +
  scale_y_discrete(expand = expansion(mult = c(0.01, 0.1))) +
  xlab('Percent of prospects') + ylab('') +
  guides(fill = guide_legend(reverse = T)) +
  theme(
    axis.text.x = element_blank(),
    axis.text.y = element_text(color = '#444444', size = 6, face = 'bold', hjust = 1)
  )



df_stu %>% filter(!is.na(s2psatnum01)) %>% group_by(x2race) %>% summarize(
  n=n(), 
  n_yes = sum(s2psatnum01 == 'yes', na.rm = TRUE),
  n_no = sum(s2psatnum01 == 'no', na.rm = TRUE),
  p_yes = sum(s2psatnum01 == 'yes', na.rm = TRUE)/n*100,
  p_no = sum(s2psatnum01 == 'no', na.rm = TRUE)/n*100
)



df_stu %>% filter(!is.na(s2psatnum01)) %>% group_by(s2psatnum01) %>% summarize(
  n=n(), 
  n_aian = sum(x2race == 'aian'),
  n_asian = sum(x2race == 'asian'),
  n_black = sum(x2race == 'black'),
  n_hisp = sum(x2race == 'hisp'),
  n_multi = sum(x2race == 'multi'),
  n_nhpi = sum(x2race == 'nhpi'),
  n_white = sum(x2race == 'white'),
  p_aian = sum(x2race == 'aian')/n*100,
  p_asian = sum(x2race == 'asian')/n*100,
  p_black = sum(x2race == 'black')/n*100,
  p_hisp = sum(x2race == 'hisp')/n*100,
  p_multi = sum(x2race == 'multi')/n*100,
  p_nhpi = sum(x2race == 'nhpi')/n*100,
  p_white = sum(x2race == 'white')/n*100,  
)


#### comparing two proportions; unweighted
  # prop.test(x, n, p = NULL, alternative = "two.sided", correct = TRUE)
    # x: a vector of counts of successes
    # n: a vector of count trials
    # alternative: an alternative hypothesis specified as a character string
    # correct: a logical indication of whether or not Yates’ continuity correction should be used when it is possible

# question 1: 
  # is the proportion of black students who take the psat (black_psat_takers/black) different than the proportion of non-black students who take the psat (non_black_sat_takers/non_black)
  # proportion of black who take psat: 1050/(1050+572)  = 0.647349
  # proportion of non-black who take psat: 10162/(10162+4530) = 0.6916689
  # in prop.test, count "success" as being an sat taker
  prop.test(x = c(1050,10162), n = c(1050+572,10162+4530), alternative = 'two.sided', conf.level = 0.95, correct = TRUE)
  # do for hispanic
  prop.test(x = c(1519,9693), n = c(1519+969,9693+4133), alternative = 'two.sided', conf.level = 0.95, correct = TRUE)
  # do for multi
  prop.test(x = c(936,10276), n = c(936+461,10276+4641), alternative = 'two.sided', conf.level = 0.95, correct = TRUE)
  
# question 2: 
  # is the proportion of psat takers who are black (black_psat_takers/psat_takers) different than the proportion of non-psat takers who are black (black_non_psat_takers/non_psat_takers)
  # proportion of psat takers who are black (black_psat_takers/all_psat_takers): 1050/11212 = 0.09364966
  # proportion of non-psat-takers who are black (black_non_psat_takers/all_non_psat_takers): 572/5102 = 0.1121129
  # in prop.test count "success" as being black  
  prop.test(x = c(1050,572), n = c(11212,5102), alternative = 'two.sided', conf.level = 0.95, correct = TRUE)
  # do for hispanic
  prop.test(x = c(1519,969), n = c(11212,5102), alternative = 'two.sided', conf.level = 0.95, correct = TRUE)
  # do for multi
  prop.test(x = c(936,461), n = c(11212,5102), alternative = 'two.sided', conf.level = 0.95, correct = TRUE)
  


df_stu %>% filter(!is.na(s2psatnum01)) %>% group_by(x2race) %>%  count(s2psatnum01)



df_stu %>% filter(!is.na(s2psatnum01)) %>% group_by(x2race,s2psatnum01) %>% summarize(n = n())
  
df_stu %>% filter(!is.na(s2psatnum01)) %>% count(x2race,s2psatnum01)

df_stu %>% mutate(tooksat = if_else(s2satnum>0,1,0)) %>%  filter(!is.na(s2satnum)) %>% count(x2race,tooksat)

summary(svy_df)
svytable(~as.factor(x2race), design = svy_df, Ntotal = 100)


#### comparing two proportions; unweighted
  # prop.test(x, n, p = NULL, alternative = "two.sided", correct = TRUE)
    # x: a vector of counts of successes
    # n: a vector of count trials
    # alternative: an alternative hypothesis specified as a character string
    # correct: a logical indication of whether or not Yates’ continuity correction should be used when it is possible

# is proportion of women taking sat = to proportion of men taking sat
df_stu %>% filter(!is.na(s2satnum)) %>% count(x2sex,s2satnum01)

?prop.test
prop.test(x = c(3917,3646), n = c(3917+4284,3646+4466), alternative = 'two.sided', conf.level = 0.95, correct = TRUE)

as_factor(df_stu, only_labelled = TRUE) %>% glimpse()
df_stu %>% mutate(s2satnum01 = as.factor(s2satnum01), x2sex = as.factor(x2sex)) %>% select(s2satnum01,x2sex) %>% count(x2sex,s2satnum01)

df_stu %>% mutate(s2satnum01 = as.factor(s2satnum01), x2sex = as.factor(x2sex)) %>%
  
df_stu %>%  filter(!is.na(s2satnum01)) %>%
  prop_test(s2satnum01 ~ x2sex, order = c('Female','Male'), alternative = "two-sided", conf_int = FALSE, correct = TRUE) %>%
  str()
  
prop_test(df_stu, as.factor(s2satnum01) ~ as.factor(x2sex))

prop_test(df_stu, as.factor(s2satnum01) ~ x2sex, alternative = "two-sided", conf_int = TRUE, correct = TRUE)

prop_test(gss,
          college ~ sex,
          order = c("female", "male"))

prop_test(df_stu,
          s2psatnum01 ~ as.factor(re_black))

          order = c("female", "male"))

gss %>% glimpse()

gss %>% count(sex)

# is proportion of black students taking SAT = to proportion of non-black students taking SAT
df_stu %>% filter(!is.na(s2satnum)) %>% count(re_black,s2satnum01)
prop.test(x = c(734,6829), n = c(734+895,6829+7855), alternative = 'two.sided', conf.level = 0.95, correct = TRUE)

# proportion white students taking sat
df_stu %>% filter(!is.na(s2satnum)) %>% count(re_white,s2satnum01)
prop.test(x = c(4417,3146), n = c(4417+4859,3146+3891), alternative = 'two.sided', conf.level = 0.95, correct = TRUE)



# A tibble: 4 × 3
  re_white s2satnum01     n
     <dbl> <dbl+lbl>  <int>
1        0 0 [No]      
2        0 1 [Yes]     
3        1 0 [No]      
4        1 1 [Yes]     

# tabulation
svytable(~as.factor(x2race), design = svy_df) %>% str()

svytable(~as.factor(x2race), design = svy_df, Ntotal = 100)

svytable(~as.factor(s2psatnum), design = svy_df, Ntotal = 100)
svytable(~as.factor(s2satnum), design = svy_df, Ntotal = 100)

df_stu %>% count(x2race) %>% mutate(freq = (n / sum(n)) * 100)


df_stu %>% select(stu_id,starts_with('w3'),x3univ1) %>% filter(w3w1w2stutr>0) %>% count()

w3w1stutr

w3w2stutr

  count(x2paredu)

df_stu %>% count(psu)
df_stu %>% count(s2psatnum,x3univ1)

df_stu %>% count(x3tgpaacad)
df_stu %>% count(x3univ1)
df_stu %>% count(x4univ1)

df_stu_all %>% filter(W3W1W2STUTR>0) %>% count(X3UNIV1)

df_stu_all %>% filter(W3W2STUTR>0) %>% count(X3UNIV1)

df_stu %>% glimpse()

df_work <- df_stu

df_stu_all %>% filter(X3UNIV1 %in% c('1111','1101')) %>% 
  select(X2TXMTSCOR,X2TXMQUINT,X2X1TXMSCR) %>%
  summarize_all(
    .funs = list(
      avg = ~ mean(., na.rm = TRUE),
      min = ~ min(., na.rm = TRUE),
      max = ~ max(., na.rm = TRUE),
      n_nonmiss = ~ sum(!is.na(.)),
      n_miss = ~ sum(is.na(.))
    )
  )


df_stu_all %>% filter(X3UNIV1 %in% c('1111','1101')) %>% count(X2CONTROL)
df_stu_all %>% filter(X3UNIV1 %in% c('1111','1101')) %>% count(X2SESQ5)





df_stu_all %>% filter(X3UNIV1 %in% c('1111','1101')) %>% count(X2TXMTH)

df_stu_all %>% filter(X3UNIV1 %in% c('1111','1101')) %>% count(X1TXMTH)


df_stu_all %>% filter(X3UNIV1 %in% c('1111','1101')) %>% count(X2SESQ5)

df_stu_all %>% filter(X3UNIV1 %in% c('1111','1101')) %>% count(X2PAREDU)


keep_vars %>% tolower()





  
  df_work %>% select(contains("race"))
  
  df_work %>% count(x1race)
  df_work %>% count(x2race)
  df_work %>% count(x1race,x2race)
  
  df_work %>% select(matches("s2.+num"))
  df_work %>% count(s2psatnum)
  df_work %>% mutate(
            s2psatnum = recode(s2psatnum,`4`=0)
            ) %>% count(s2psatnum)

  df_work %>% mutate(across(.cols = matches("s2.+num"), ~ recode(.,`4`=0))
    ) %>% count(s2apexamnum)
  
df_stu %>% count(x1race)
df_stu %>% count(x2race)

df_stu %>% glimpse()
df_stu %>% select(x1par1race,x1par2edu) %>% glimpse()

df_stu$x1par1race %>% class()
df_stu$x1par2edu %>% class()

df_stu %>% count(x1par1race)
df_stu %>% count(x1par2edu)

df_stu %>% var_label()

df_stu %>% count( X1PAR2EMP) %>% print(n=40)
df_stu %>% count(x3univ1) %>% print(n=40)



