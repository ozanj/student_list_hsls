################################################################################
## [ PROJ ] < student list hsls >
## [ FILE ] < eda.R >
## [ AUTH ] < Ozan Jaquette >
## [ DESC ] < exploratory data analysis and experimentation, hsls >
## [ INIT ] < 10/24/2022 >
################################################################################

### Libraries

library(survey)


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
    # skinner modeling tutorial
      # https://www.btskinner.io/rworkshop/modules/modeling.html
  # weight variable
    # note: NCES documentation refers to these as analytic weights" but I think Lumley would call them "sampling weights"
    # w3w2stutr = W3 High school transcript, first follow-up, and 2013 Update weight
      # alternative weight var: w3w1w2stutr = W3 High school transcript, base year, first follow-up, and 2013 Update weight
  # stratum
    # strat_id RESTRICTED
  # primary sampling unit (psu)
    # psu RESTRICTED

svy_df <- svydesign(
  ids = ~0, 
  weight = ~w3w2stutr, 
  #strata = ~NULL, 
  nest = FALSE, 
  data = df_stu
)

summary(svy_df)

  #survey.lonely.psu = "adjust", 

# tabulation
svytable(~as.factor(x2race), design = svy_df) %>% str()

svytable(~as.factor(x2race), design = svy_df, Ntotal = 100)

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



