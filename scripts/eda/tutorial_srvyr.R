################################################################################
## [ PROJ ] < student list hsls >
## [ FILE ] < tutorial_srvyr.R >
## [ AUTH ] < Ozan Jaquette >
## [ DESC ] < working through tutoral comparing survey package to srvyr package>
  #https://cran.r-project.org/web/packages/srvyr/vignettes/srvyr-vs-survey.html
## [ INIT ] < 10/24/2022 >
################################################################################



data(api)
  # academic performance index
apistrat %>% glimpse()

out <- apistrat %>%
  mutate(hs_grad_pct = cut(hsg, c(0, 20, 100), include.lowest = TRUE,
                           labels = c("<20%", "20+%"))) %>%
  group_by(stype, hs_grad_pct) %>%
  summarize(api_diff = weighted.mean(api00 - api99, pw),
            n = n())

ggplot(data = out, aes(x = stype, y = api_diff, group = hs_grad_pct, fill = hs_grad_pct)) +
  geom_col(stat = "identity", position = "dodge") +
  geom_text(aes(y = 0, label = n), position = position_dodge(width = 0.9), vjust = -1)


# creating srvyr object
strat_design_srvyr <- apistrat %>%
  as_survey_design(1, strata = stype, fpc = fpc, weight = pw,
                variables = c(stype, starts_with("api")))


strat_design_srvyr <- strat_design_srvyr %>%
  mutate(api_diff = api00 - api99) %>%
  rename(api_students = api.stu)

strat_design_srvyr$variables %>% names()

# summary statistics
out <- strat_design_srvyr %>%
  summarize(api_diff = survey_mean(api_diff, vartype = "ci"))

  # this is incorrect
  strat_design_srvyr$variables %>% summarize(mvar = mean(api_diff))
  
  # this is correct
  strat_design_srvyr %>%
    summarize(api_diff = survey_mean(api_diff, vartype = "ci"))

# this is using functions from survey package rather than srvyr package
  strat_design_survey <- svydesign(~1, strata = ~stype, fpc = ~fpc,
                                   variables = ~stype + api99 + api00 + api.stu,
                                   weight = ~pw, data = apistrat)
  strat_design_survey$variables$api_diff <- strat_design_survey$variables$api00 -
    strat_design_survey$variables$api99
  names(strat_design_survey$variables)[names(strat_design_survey$variables) == "api.stu"] <- "api_students"
  
  out <- svymean(~api_diff, strat_design_survey)

  out
  confint(out)

# summary statistics by group
  strat_design_srvyr %>%
  group_by(stype) %>%
  summarize(api_increase = survey_total(api_diff >= 0),
            api_decrease = survey_total(api_diff < 0))
  
# using "survey"
  svyby(~api_diff >= 0, ~stype, strat_design_survey, svytotal)
  
# proportions by group
  srs_design_srvyr <- apisrs %>% as_survey_design(ids = 1, fpc = fpc)
  
  srs_design_survey <- svydesign(ids = ~1, fpc = ~fpc, data = apisrs)

  srs_design_srvyr %>%
  group_by(awards) %>%
  summarize(proportion = survey_mean(),
            total = survey_total())
  
  #using survey package
  svymean(~awards, srs_design_survey)
  svytotal(~awards, srs_design_survey)
  
  
#unweighted calculations
  # Using srvyr
  strat_design_srvyr %>%
    group_by(stype) %>%
    summarize(n = unweighted(n()))
  
  # using survey
  svyby(~api99, ~stype, strat_design_survey, unwtd.count)
  
  
############## BACK TO EXAMPLE
  
  #create graph of API_DIFF, separately by school type and hs_grad_pct, with 95% CIs
  
  strat_design <- apistrat %>%
  as_survey_design(strata = stype, fpc = fpc, weight  = pw)

  out <- strat_design %>%
    mutate(hs_grad_pct = cut(hsg, c(0, 20, 100), include.lowest = TRUE,
                             labels = c("<20%", "20+%"))) %>%
    group_by(stype, hs_grad_pct) %>%
    summarize(api_diff = survey_mean(api00 - api99, vartype = "ci"),
              n = unweighted(n()))
  
  # check out this object named out, which has confidence intervals
  out
  
  ggplot(data = out, aes(x = stype, y = api_diff, group = hs_grad_pct, fill = hs_grad_pct,
                         ymax = api_diff_upp, ymin = api_diff_low)) +
    geom_col(stat = "identity", position = "dodge") +
    geom_errorbar(position = position_dodge(width = 0.9), width = 0.1) +
    geom_text(aes(y = 0, label = n), position = position_dodge(width = 0.9), vjust = -1)
  
  
  # degrees of freedom calculated differently in srvyr and survey package
  
  
#Using expressions to create variables on the fly
  #Like dplyr, srvyr allows you to use expressions in the arguments, allowing you to create variables in a single step. 
  #For example, you can use expressions:
    #1= as the arguments inside the survey statistic functions like survey_mean
    strat_design %>%
      summarize(prop_api99_over_700 = survey_mean(api99 > 700))
    # 2 = as an argument to summarize
    strat_design %>%
      group_by(awards) %>%
      summarize(percentage = 100 * survey_mean())
    # 3 = you can even create varables inside of group_by
    

    
# programming w/ dplyr and srvyr 
    # think this relates to writing user-defined functions that utilize functions from both dplyr and srvyr package...
    # link to programming w/ dplyr vignette: https://dplyr.tidyverse.org/articles/programming.html
    # non-standard evaluation
    mean_with_ci <- function(.data, var) {
      summarize(.data, mean = survey_mean({{var}}, vartype = "ci"))
    }

    srs_design_srvyr <- apisrs %>% as_survey_design(fpc = fpc)

    mean_with_ci(srs_design_srvyr, api99) %>% str()
    
# working column-wise
    # https://dplyr.tidyverse.org/articles/colwise.html
    # As of version 1.0 of srvyr, it supports dplyr’s across function, so when you want to calculate a statistic on more than one variable, it is easy to do so. See vignette("colwise", package = "dplyr") for more details, but here is another quick example:
    strat_design %>%
      summarize(across(starts_with("api"), survey_mean))
    
# calculating proportions in groups
    # You can calculate the weighted proportion that falls into a group using the survey_prop() function (or the survey_mean() function with no x argument). 
    # The proportion is calculated by “unpeeling” the last variable used in group_by() and then calculating the proportion within the other groups that fall into the last group (so that the proportion within each group that was unpeeled sums to 100%).

  # Calculate the proportion that falls into each category of `awards` per `stype`
  strat_design %>%
    group_by(stype, awards) %>%
    summarize(prop = survey_prop())
  
  # If you want to calculate the proportion for groups from multiple variables at the same time that add up to 100%, the interact function can help. The interact function creates a variable that is automatically split apart so that more than one variable can be unpeeled.
  # Calculate the proportion that falls into each category of both `awards` and `stype`
  strat_design %>%
    group_by(interact(stype, awards)) %>%
    summarize(prop = survey_prop())