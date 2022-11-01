################################################################################
## [ PROJ ] < student list hsls >
## [ FILE ] < eda_srvyr.R >
## [ AUTH ] < Ozan Jaquette >
## [ DESC ] < EDA and experimentation on hsls data w/ srvyr package >
## [ INIT ] < 10/31/2022 >
################################################################################

### Libraries

library(survey)
library(srvyr)
#install.packages('srvyr')
library(tidymodels)


#### curious what is mean value of weight var by race

df_stu %>% group_by(x2race) %>% summarize(
  num_race = n(),
  num_miss_wgt = sum(is.na(w3w2stutr)),
  avg_wgt = mean(w3w2stutr, na.rm= TRUE)
)


#### make objects using both srvyr package and survey package

#####
#### using as_survey_design with no replicate weights

  #using srvyr package
  srvyr_obj <- df_stu %>% filter(!is.na(s2psatnum01) & !is.na(s2satnum01) & !is.na(s2apexamnum01)) %>% 
    as_survey_design(
      #ids = ~stu_id,
      weights = w3w2stutr
      #type = 'BRR',
      #repweights = matches('w3w2stutr[0-9]+')
      #nest = FALSE
    )

  # using survey package
  #survey_obj <- svydesign(
  #  ids = ~0, # ~0, # ~stu_id,  
  #  weight = ~w3w2stutr, 
  #  #strata = ~NULL, 
  #  nest = FALSE, 
  #  data = df_stu %>% filter(!is.na(s2psatnum01) & !is.na(s2satnum01) & !is.na(s2apexamnum01))
  #)  

    
#####
#### using as_survey_design with replicate weights
  
srvyr_rep <- df_stu %>% filter(!is.na(s2psatnum01) & !is.na(s2satnum01) & !is.na(s2apexamnum01)) %>% 
  as_survey_rep(
    #ids = ~stu_id,
    weights = w3w2stutr,
    type = 'BRR',
    repweights = matches('w3w2stutr[0-9]+'),
    combined_weights = TRUE
  )

#srvyr_rep <- df_stu %>% filter(!is.na(s2psatnum01) & !is.na(s2satnum01) & !is.na(s2apexamnum01)) %>% 
#  as_survey(
#    #ids = ~stu_id,
#    weight = w3w2stutr,
#    type = 'BRR',
#    repweights = matches('w3w2stutr[0-9]+')
#  )

# approach used by skinner/doyle in lowinc_enroll_mrp_rep
  # think this is wrong; not recognizing repweights
  #survey_rep <- svydesign(
  #  ids = ~stu_id, # ~0, # ~stu_id,  
  #  weights = ~w3w2stutr, 
  #  data = df_stu %>% filter(!is.na(s2psatnum01) & !is.na(s2satnum01) & !is.na(s2apexamnum01)),
  #  repweights = 'w3w2stutr[0-9]+',
  #  type = 'BRR'
  #)

  #survey_rep <- svrepdesign(
  #  ids = ~stu_id, # ~0, # ~stu_id,  
  #  weights = ~w3w2stutr, 
  #  data = df_stu %>% filter(!is.na(s2psatnum01) & !is.na(s2satnum01) & !is.na(s2apexamnum01)),
  #  repweights = 'w3w2stutr[0-9]+',
  #  type = 'BRR',
  #  combined.weights = TRUE,
  #)

# one-way tabulation


  # srvyr package
  srvyr_obj %>% 
    group_by(x2race) %>%
    summarize(
      n = n(),
      unwgt_n = unweighted(n()),
      survey_total = survey_total(),
      prop = survey_prop()
    )

  srvyr_rep %>% 
    group_by(x2race) %>%
    summarize(
      n = n(),
      unwgt_n = unweighted(n()),
      survey_total = survey_total(),
      prop = survey_prop()
    )
  
  srvyr_rep %>% 
    group_by(x2race) %>%
    summarize(
      n = n(),
      unwgt_n = unweighted(n()),
      wgt_n = survey_total(),
      prop = survey_prop()
    )  

  srvyr_obj %>% summarize(survey_total = survey_total())
    # 4058235

  
# two way tabulation
# create table of proportions using survey package

  #svytotal(~x2race, design = survey_obj)
  #svytotal(~interaction(x2race,s2psatnum01), design = survey_obj)
  #svytotal(~interaction(x2race,s2psatnum01), design = survey_obj, deff = TRUE)


# create table of proportions using srvyr package
  psat_temp <- srvyr_rep %>% 
    group_by(s2satnum01,x2race) %>%
    summarize(
      #n = n(),
      unwgt_n = unweighted(n()),
      count = survey_total(),
      pct = survey_prop()
    )

psat_temp

psat_temp_figure_totals <- psat_temp %>%
  mutate(
    filter = recode_factor(
      s2satnum01,
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

# CREATE FUNCTION THAT CREATES INPUTS TO GRAPHS

  # note: you can create your "filter var" in a mutate pipe and then call your program in subsequent pipe; 
    # this way, you don't have to create the filter_var within the program!!!

prop_w_ci <- function(.data,var) {

  # table of proportions w/ SEs    
  df_table <- .data %>% 
    group_by({{var}},x2race) %>%
      summarize(
        #n = n(),
        unwgt_n = unweighted(n()),
        count = survey_total(),
        pct = survey_prop()
      )
    
  # table of figure totals
  df_totals <- df_table %>% group_by({{var}}) %>%
    summarise(
      count = sum(count)
    ) %>% 
    ungroup()
  
  list(table = df_table, totals = df_totals)
  
}

#prop_w_ci(srvyr_rep,s2psatnum01)

srvyr_rep %>% mutate(filter_var = if_else(s2psatnum01=='yes' & s2satnum01=='yes',1,0),
                     filter_var = recode_factor(filter_var,`0`= 'Excluded',`1` = 'Included')) %>% prop_w_ci(filter_var)

# took both SAT and PSAT exam
temp <- srvyr_rep %>% mutate(filter_var = if_else(s2psatnum01=='yes' & s2satnum01=='yes',1,0),
                     filter_var = recode_factor(filter_var,`0`= 'Excluded',`1` = 'Included')) %>% prop_w_ci(filter_var)

# took an AP exam
temp <- srvyr_rep %>% mutate(filter_var = if_else(s2apexamnum01=='yes',1,0),
                     filter_var = recode_factor(filter_var,`0`= 'Excluded',`1` = 'Included')) %>% prop_w_ci(filter_var)
#temp <- srvyr_rep %>% mutate(filter_var = if_else(s2psatnum01=='yes' & s2satnum01=='yes',1,0)) %>% prop_w_ci(filter_var)

temp[['table']]
temp[['totals']]

temp[['table']] %>% 
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
    )
  ) %>% 
  ggplot(aes(y = filter_var, x = pct, fill = x2race)) +
  geom_bar(position = 'stack', stat = 'identity', alpha = 0.8) + 
  geom_text(mapping = aes(label = if_else(pct > 0.02, as.character(round(pct * 100)), '')), size = 2, position = position_stack(vjust = 0.5)) +
  geom_text(data = temp[['totals']], mapping = aes(x = 1, fill = NULL, label = str_c('N=', prettyNum(count, ','))), size = 2, hjust = -0.1) +
  scale_fill_manual(values = rev(color_palette[1:7]), name = 'Race') +
  scale_x_continuous(expand = expansion(mult = c(0, 0.04)), limits = c(0, 1.15)) +
  scale_y_discrete(expand = expansion(mult = c(0.01, 0.1))) +
  xlab('Percent of prospects') + ylab('') +
  guides(fill = guide_legend(reverse = T)) +
  theme(
    axis.text.x = element_blank(),
    axis.text.y = element_text(color = '#444444', size = 6, face = 'bold', hjust = 1)
  )

df_stu %>% mutate(filter_var = if_else(s2psatnum01==1 & s2satnum01==1,1,0)) %>% count(s2psatnum01)

# CREATE FUNCTION THAT CREATES INPUTS TO GRAPHS
prop_w_ci <- function(var) {
    
  df_stu %>% group_by(var,x2race) %>%
      summarize(
        #n = n(),
        unwgt_n = unweighted(n()),
        count = survey_total(),
        pct = survey_prop()
      )
    
}

prop_w_ci(s2psatnum01)

  temp <- df_stu %>% # srvyr_rep
      group_by(x,x2race) %>%
      summarize(
        #n = n(),
        unwgt_n = unweighted(n()),
        count = survey_total(),
        pct = survey_prop()
      )


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
      s2satnum01,
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
