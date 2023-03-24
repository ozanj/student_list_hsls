---
title: 'Student list business'
mode: selfcontained
widgets: [mathjax]
ext_widgets : {rCharts: [libraries/shiny]}
framework: revealjs
revealjs:
  theme: 'custom'
  transition: 'slide'
  center: 'false'
#bibliography: '../assets/bib/student_list_policy.bib'
#bibliography: '../assets/bib/eepa_student_list.bib'
#csl: '../assets/bib/apa.csl'
#bibliography: '../../public_requests_eda/text/bib/eepa_student_list.bib'
bibliography: './assets/bib/eepa_student_list.bib'
csl: './assets/bib/apa.csl'
--- #title








# A Sociological Analysis of Structural Racism in Student List Products

<div id='authors'>
  <div><p>Ozan Jaquette</p><span class='affiliation'>UCLA</span></div>
  <div><p>Karina Salazar</p><span class='affiliation'>University of Arizona</span></div>
</div>

<a class="link" href="https://ozanj.github.io/student_list_hsls/slides/student_list.html" target="_blank">ozanj.github.io/student_list_hsls/slides/student_list.html</a>


--- .section

# Introduction


---


## The market for college access

A two-sided matching problem in which market allocates students to colleges (Hoxby, 1997; Hoxby, 2009)

-   Barriers to efficient market:
    -   transportation costs; information costs
-   Students
    -   Goal: want to attend college
    -   Information problem: Don't know where they will be admitted, how much it will cost
-   Colleges want to enroll students
    -   Enrollment goals: academic profile; revenue; diversity; internal constituents
    -   Information problem: Don't know who/where the "good" students are, how to contact them

<br>

Matchmaking

-   "Inquiries" (student as first contact)
  -   Students send test scores or fill out inquiry form
-   The enrollment problem
    - Most colleges cannot survive/thrive solely from students who reach out on their own
    - Must find desirable prospects who can be convinced to apply/enroll

---

## Student lists products

"Student list" products are a matchmaking intermediary that connects colleges to prospects

-   Third-party vendors obtain data and contact info about prospecs (e.g., Testing orgs, search engines)
-   Vendors sell contact information of prospects to colleges looking for students
    - Colleges choose prospect profiles by filtering on search filters (e.g., zip code, test score)

<br>

Policy concerns about student list products

- Problem with underlying products
  - Search filters incorporate "racialized inputs" (Norris, 2021) that systematically disadvantage underrepresented students of color
- Problem with utilization of products
  - University administrators may choose combinations of search filters that result in racial exclusion

<br>

Research questions

1. What is relationship between search filters and racial composition of included vs excluded students?
1. How do public universities use racialized search filters in concert with other search filters when purchasing student lists?
3. What is observed racial composition of student list purchases that utilize racialized search filters in concert with other search filters?

---

## Research overview

Research questions

<br>

1.  **What is relationship between search filters and racial composition of included vs excluded students?**
    - Reconstruct College Board student list product using nationally representative sample of 9th graders from 2009 (NCES High School Longitudinal Survey)
    - Simulate which students are included versus excluded when certain search filters are utilized
<br>

2.  **How do public universities use racialized search filters in concert with other search filters when purchasing student lists?**
    - Analyze 830 student lists purchased by 14 public universities, collected via public records requests
<br>

3.  **What is observed racial composition of student list purchases that utilize racialized search filters in concert with other search filters?**
    - Analyze targeted student list purchases, where we obtained both the order details and deidentified prospect-level data

--- .section

# Background & Literature

--- &twocol

## How student lists fit into recruiting undergraduates

*** =left

Prospects

- Population of desirable potential students

Leads

- Prospects with contact info

Inquiries

- Prospects who have contacted the institution
  - Institution as first contact (leads)
  - Student as first contact

<br>
Interventions along the funnel

- **Convert prospects to leads**
  - **purchase student lists**
    - **list-based lead generation**
    - **based on direct mail model**
- Convert leads/inquiries to applicants
  - Email, mail, targeted social media
- Convert admits to enrolles
  - Financial aid packages

*** =right

<center>**The enrollment funnel**</center>

<br>

<img src="assets/fig/enroll_funnelv2.png" alt="Enrollment Funnel" style="width:70%;margin:0 auto;">

Source: [pngwing.com](https://www.pngwing.com/en/free-png-krrpy)


--- 

## Scholarship on recruiting from sociology

Enrollment funnel: prospects >> leads >> inquires >> applicants >> admits >> enrolled

- Most scholarship on enrollment management focuses on latter stages (admissions, financial aid)
- Body of research in sociology that analyzes recruiting "in the wild"
    
<br>
Recruiting from perspective of high school students (Holland, 2019)

- Underrepresented students sensitive to feeling "wanted" by colleges

<br>
Connections between high schools and colleges from organizational behavior perspective

- Off-campus recruiting visits indicate a network tie and enrollment priorities
- recruiting from perspective of private college (Stevens, 2007), private HS counselors (Khan, 2011)
- Recruiting visits by public research univs   (e.g., Salazar, Jaquette, and Han, 2021; and Salazar, 2022)

<br>
Recruiting at open-access PSIs for adults  (e.g., and Cottom, 2017; and Posecznick, 2017)

- For-profits have demand in Black/Latinx communities because traditional colleges ignore them

<br>
Scholarship assumes that recruiting is something done wholly done by individual colleges

- Third-party products and vendors structure recruiting behavior by colleges
- How do products incorporate structural inequality? How are they utilized by colleges?

--- 

## College Board and ACT student list products

Sources of student list data

- Test takers (e.g., PSAT, SAT, AP), pre-test questionnaire (demographics, preferences)
- More recently, from college search engines (e.g., College Board Big Future)  
- Students can opt in or out

<br>

What information does a list contain ([College Board template](https://drive.google.com/file/d/1Qvc_QRi9izEF1W78Lh4nNi5NsXjCZqUE/view)) 
- Contact, demographic, college preferences, limited academic achievement

<br>
Pricing

- Historically, price-per-prospect (e.g., \$0.50 per name); now a subscription model


<br>

Buying lists: "search filters" control which prospects included in purchase

- Commonly used search filters ([Link to ACT filters](https://helpcenter.encoura.org/hc/en-us/articles/360035260452-Prospect-Search-Filters-))
  - e.g., HS GPA, test score range, gender, race, geography (e.g., state), enrollment probability
- Salazar, Jaquette, and Han (2022) categorizes College Board search filters into four buckets:
  - Geographic
  - Academic
  - Demographic
  - Student preferences

---

## Filters used in 830 lists purchased by 14 public universities

<img src="assets/fig/orders-filters-combined-1.png" alt="plot of chunk orders-filters-combined" width="90%" />


---

# College Board lists and student outcomes
## Howell, Hurwitz, Mabel et al. (2021)

<img src="assets/fig/cb-fig-1.png" alt="plot of chunk cb-fig" width="90%" />

<br>
also see: Smith, Howell, and Hurwitz (2022) for effect of university purchasing profile on college choice


--- .section

# Conceptual Framework

--- 

## Sociology of race


Selection devices allocate individuals to categories based on input factors (Hirschman and Bosk, 2020)

- Standardized selection devices
  - decisions based on mathematical function in which input values determine outcome value
  - "actuarial" selection devices predict outcomes based on analysis of past cases
- Discretionary selection devices
  - Decisions incorporate judgment of individual evaluators (e.g., holistic admissions)
  - Student list products are discretionary selection devices

<br>

Standardized selection devices and racial inequality
  - May reduce racial inequality if source of inequality is bias from individual decision-maker
  - Do not reduce inequality due to structural racism (Bonilla-Silva, 1997)
    - Structural racism is “systematic racial bias embedded in the ‘normal’ functions of laws and social relations,” whereby processes viewed as neutral or common-sense systematically disadvantage marginalized groups (Tiako, South, and Ray, 2021, p. 1143)

<br>    
Discretionary selection devices and racial inequality

- Sensitive to individual bias from decision-makers and inputs related to race


--- 

## Racialized inputs

<br>
Norris (2021)

- reconstructs inputs used by Moody’s city government credit rating algorithm
- Racialized inputs: "theoretically and empirically correlated with historical racial disadvantage" (p. 5)
- "colorblind" selection devices reproduce racial inequality by using seemingly neutral inputs that are systematically related to race because marginalized groups have been historically excluded from input

<br>
Geography inputs

- US racially segregated due to historic and current laws/policies/practices
- Zip code an input in algorithm that predicts crime recidivism (O'Neil, 2016; Benjamin, 2019)
  - Zip code a search filter on CB/ACT student list products
  - Ruffalo Noel Levitz algorithm recommends which zip codes to buy names
- Geodemographic classifications classify localities by consumer behavior (Leyshon and Thrift, 1999)
  - CB Geodemographic filters classify census tracts by past college enrollment (College Board, 2011)

<br>
Inputs based on predictive analytics

- Analyze determinants of an outcome in past cases, use results as an input to select future cases (e.g., ACT "enrollment predictor" filter)

--- 

## RQ1: relationship between filters and racial composition

Standardized college entrance exams and AP exams as racialized inputs

- Racial/ethnic differences in test-taking and test scores a function of historic/contemporary school segregation, differences in school funding, differences in access to curricula (e.g., Reardon, Kalogrides, and Shores, 2019; Rodriguez and Hernandez-Hamed, 2020)
<!-- - Concerns about bias in question items (e.g., and Freedle, 2003; Santelices and Wilson, 2010) -->


<br>

**P1**: The condition of taking standardized assessments is associated with racial disparities in who is included versus excluded in student list products.

<br>

**P2**: As test score threshold increases, proportion of underrepresented minority students included in student lists declines relative to proportion who are excluded.

<br>

**P3**. As purchases filter on more affluent zip codes, the proportion of underrepresented minority students included in student lists declines relative to proportion excluded.

<br>

**P4**. Filtering on smaller geographic localities is associated with greater racial disparities in included vs. excluded than filtering on larger geographic localities.

<br>

Filtering on multiple racialized inputs has compounding effect on racial inequality


--- .section

# Methods

--- .subsection

# Data 

---

## HSLS09 & Student List Project

__High School Longitudinal Study of 2009 (HSLS09)__
- Nationally representative survey of 23,000 students from 944 schools entering 9th grade in Fall 2009
- Follow up surveys: Spring 2012 (11th grade), 2013 (HS graduation/transcripts), 2016 (postsecondary)
- Sample: Students who completed 2012/2013 survey follow-ups + HS transcripts
  - Unweighted: N=16,530
  - Weighted analysis sample: N=4.2 Million

<br>
<br>

__Student List Project__
- Issued public records requests for student list data (2016-2020) to all public universities in four states (CA, IL, MN, TX)
- Target student list vendors: College Board, ACT
- Data collected for each purchased list:
  - "Order summary" specifying search filter criteria ([LINK](https://drive.google.com/file/d/1gPZ-WWw0gdFT7VtzBN3hKLnj2DzoaqnY/view))
  - De-identified prospect-level student list ([LINK](https://drive.google.com/file/d/1Qvc_QRi9izEF1W78Lh4nNi5NsXjCZqUE/view))
- Funded by Joyce Foundation and Kresge Foundation

--- .subsection

# Research design

--- 

## Variables & Analyses

**RQ1**. What is relationship between search filters and racial composition of included vs excluded students?

- Data: HSLS09
- Dependent Variable: student race/ethnicity
- Independent Variables: measures of student list academic and geographic filters
  - Dichotomous and score threshold measures of SAT, PSAT, AP (and GPA)
    - Note: HSLS measures for SAT includes ACT, and PSAT includes PreACT
  - Economic measures of students' zipcode, county, CBSA from ACS
- Analyses: inferential descriptive statistics (comparing two propoportions)
  - Racial composition of included vs excluded prospects when particular filters utilized

<br>

  
**RQ2**. How do public universities use racialized search filters in concert with other search filters when purchasing student lists?

- Data: order summaries from 830 College Board student lists purchased by 14 public universities
- Analyses: descriptive statistics of search filters specified in orders

<br>

**RQ3**. What is observed racial composition of student list purchases that utilize racialized search filters in concert with other search filters?

- Data: de-identified prospect-level student list data; incorporate ACS data for comparisons
- Analyses: descriptive statistics of targeted student list purchases



<!-- ## Summary of orders and prospects -->

<!-- ```{r purchased-data, results = 'asis', echo = F, message = F} -->
<!-- data.frame( -->
<!--   orders_total = num_orders, -->
<!--   orders_with_list = num_orders_w_list, -->
<!--   prospects_total = prettyNum(num_prospects, ','), -->
<!--   prospects_with_order = prettyNum(num_prospects_w_order, ',') -->
<!-- ) %>%  -->
<!--   xtable(align = rep('c', 5), display = rep('d', 5)) %>%  -->
<!--   print(add.to.row = list(pos = list(0), command = c('<tr style="text-align:center;"><th style="border-bottom:none;">RQ1</th><th style="border-bottom:none;">RQ3</th><th style="border-bottom:none;">RQ2</th><th style="border-bottom:none;">RQ3</th></tr><tr style="text-align:center;"><th># orders total</th><th># orders with list</th><th># prospects total</th><th># prospects with order</th></tr>')), include.colnames = F) -->
<!-- ``` -->

<!-- <br> -->

<!-- Empirical research questions -->

<!-- 1. Which filter criteria were selected in student lists purchases? -->
<!--   - Unit of analysis = order; 830 orders (by 14 universities) -->
<!-- 1. What are the characteristics of prospects included in student lists purchases? -->
<!--   - unit of analysis = university-prospect; 3,663,257 prospects (by 14 universities) -->
<!-- 1. **What is relationship between filter criteria and characteristics of purchased prospects?** -->
<!--   - Unit of analysis = order-prospect; 414 orders associated with 2,548,085 prospects -->

<!-- <br> -->
<!-- Case study research design because non-random sample -->

<!-- - RQ1 and RQ2 -->
<!--   - Internal validity: are orders/prospects representative of behavior of 14 universities in sample? -->
<!--   - External validity: cannot make inferences about population of public univs -->
<!-- - RQ3 -->
<!--   - Ixternal validity: set of search criteria yield same prospects regardless of which univ purchases -->
<!--   - Analyses focus on "deep dives" of conceptually important order combinations -->


--- .section

# Results

--- .subsection

# RQ1


--- &twocol .subsubsection

# Test Takers
## **P1**: Racial disparities in test-taking



<img src="../outputs/figures/legend_horizontal.png" alt="Enrollment Funnel" style="width:50%;margin:0 auto;">

*** =left 

<div class="row">
  <div class="column">
    <img src="../outputs/figures/p1_sat.png" alt="Snow" style="width:100%">
  </div>
  <div class="column">
    <img src="../outputs/figures/p1_psat.png" alt="Forest" style="width:100%">
  </div>
</div>

*** =right 

<div class="row">
  <div class="column">
    <img src="../outputs/figures/p1_ap.png" alt="Snow" style="width:100%">
  </div>
  <div class="column">
    <img src="../outputs/figures/p1_apstem.png" alt="Forest" style="width:100%">
  </div>
</div>


--- &twocol .subsubsection

# Test Thresholds
## **P2**: SAT, PSAT score thresholds and racial composition


<img src="../outputs/figures/legend_horizontal.png" alt="Enrollment Funnel" style="width:50%;margin:0 auto;">

*** =left 

<div class="row">
  <div class="column">
    <img src="../outputs/figures/p2_sat_inc.png" alt="P2SAT_inc" style="width:100%">
  </div>
  <div class="column">
    <img src="../outputs/figures/p2_sat_exc.png" alt="P2SAT_exc" style="width:100%">
  </div>
</div>

*** =right 

<div class="row">
  <div class="column">
    <img src="../outputs/figures/p2_psat_inc.png" alt="P2PSAT_inc" style="width:100%">
  </div>
  <div class="column">
    <img src="../outputs/figures/p2_psat_exc.png" alt="P2PSAT_exc" style="width:100%">
  </div>
</div>


--- &twocol

# Test Thresholds
## **P2**: AP score thresholds and racial composition

<img src="../outputs/figures/legend_horizontal.png" alt="Enrollment Funnel" style="width:50%;margin:0 auto;">

*** =left 

<div class="row">
  <div class="column">
    <img src="../outputs/figures/p2_ap_inc.png" alt="P2AP_inc" style="width:100%">
  </div>
  <div class="column">
    <img src="../outputs/figures/p2_ap_exc.png" alt="P2AP_exc" style="width:100%">
  </div>
</div>

*** =right 

<div class="row">
  <div class="column">
    <img src="../outputs/figures/p2_apstem_inc.png" alt="P2APstem_inc" style="width:100%">
  </div>
  <div class="column">
    <img src="../outputs/figures/p2_apstem_exc.png" alt="P2APstem_exc" style="width:100%">
  </div>
</div>

--- .subsubsection

# Geography
## **P3**: Zip code affluence and racial composition, within CBSA

<img src="../outputs/figures/legend_horizontal.png" alt="Enrollment Funnel" style="width:50%;margin:0 auto;">

<div class="row">
  <div class="column">
    <img src="../outputs/figures/p3_zip_inc.png" alt="P3zip_inc" style="width:50%">
  </div>
  <div class="column">
    <img src="../outputs/figures/p3_zip_exc.png" alt="P3zip_exc" style="width:50%">
  </div>
</div>

--- &twocol

# Geography
## **P4**: Zip vs County, affluence percentiles within CBSA

<img src="../outputs/figures/legend_horizontal.png" alt="Enrollment Funnel" style="width:50%;margin:0 auto;">

*** =left 

<div class="row">
  <div class="column">
    <img src="../outputs/figures/p4_zip_income_inc.png" alt="P4zip_inc" style="width:100%">
  </div>
  <div class="column">
    <img src="../outputs/figures/p4_zip_income_exc.png" alt="P4zip_exc" style="width:100%">
  </div>
</div>

*** =right 

<div class="row">
  <div class="column">
    <img src="../outputs/figures/p4_county_income_inc.png" alt="P4county_inc" style="width:100%">
  </div>
  <div class="column">
    <img src="../outputs/figures/p4_county_income_exc.png" alt="P4county_exc" style="width:100%">
  </div>
</div>

--- .subsubsection

# Compounding Effects
## GPA (3.0+) and SAT or PSAT (across score thresholds)

<img src="../outputs/figures/legend_horizontal.png" alt="Enrollment Funnel" style="width:50%;margin:0 auto;">

<div class="row">
  <div class="column">
    <img src="../outputs/figures/combo1_inc_sat.png" alt="combo1_sat" style="width:45%">
  </div>
  <div class="column">
    <img src="../outputs/figures/combo1_inc_psat.png" alt="combo1_psat" style="width:45%">
  </div>
</div>

---

# Compounding Effects
## GPA (3.0+), PSAT (150+), SAT (1050+), and Zip (by income)

<img src="../outputs/figures/legend_horizontal.png" alt="Enrollment Funnel" style="width:50%;margin:0 auto;">

<div class="row">
  <div class="column">
    <img src="../outputs/figures/combo2_inc_sat.png" alt="combo2_sat" style="width:45%">
  </div>
  <div class="column">
    <img src="../outputs/figures/combo2_inc_psat.png" alt="combo2_psat" style="width:45%">
  </div>
</div>

---

# Compounding Effects
## GPA (3.0+) and AP (across score thresholds)

<img src="../outputs/figures/legend_horizontal.png" alt="Enrollment Funnel" style="width:50%;margin:0 auto;">

<div class="row">
  <div class="column">
    <img src="../outputs/figures/combo3_inc_ap.png" alt="combo3_ap" style="width:45%">
  </div>
  <div class="column">
    <img src="../outputs/figures/combo3_inc_apstem.png" alt="combo3_apstem" style="width:45%">
  </div>
</div>




--- .subsection

# RQ2

--- .subsubsection

# Broad patterns
## Filters used in order purchases

<img src="assets/fig/orders-filters-1.png" alt="plot of chunk orders-filters" width="90%" />



--- .subsubsection

# Combination of filters
## Filter combos used in order purchases

<!-- html table generated in R 4.2.1 by xtable 1.8-4 package -->
<!-- Fri Mar 24 07:54:33 2023 -->
<table border=1>
  <tr><th colspan="3" style="text-align:center;">Research</th><th colspan="3" style="text-align:center;">MA/doctoral</th></tr><tr><th>Filters</th><th>Count</th><th>Percent</th><th>Filters</th><th>Count</th><th>Percent</th></tr> <tr> <td> HS grad class, GPA, SAT, PSAT, Rank, State, Race </td> <td align="center">  39 </td> <td align="center"> 10% </td> <td> HS grad class, GPA, SAT, Zip code </td> <td align="center"> 206 </td> <td align="center"> 45% </td> </tr>
  <tr> <td> HS grad class, PSAT, State </td> <td align="center">  27 </td> <td align="center"> 7% </td> <td> HS grad class, GPA, PSAT, Zip code </td> <td align="center"> 145 </td> <td align="center"> 32% </td> </tr>
  <tr> <td> HS grad class, GPA, PSAT, State, Race </td> <td align="center">  20 </td> <td align="center"> 5% </td> <td> HS grad class, SAT, State </td> <td align="center">  31 </td> <td align="center"> 7% </td> </tr>
  <tr> <td> HS grad class, PSAT, State, Low SES </td> <td align="center">  20 </td> <td align="center"> 5% </td> <td> HS grad class, GPA, SAT, PSAT, Zip code </td> <td align="center">  28 </td> <td align="center"> 6% </td> </tr>
  <tr> <td> HS grad class, GPA, PSAT, State </td> <td align="center">  17 </td> <td align="center"> 5% </td> <td> HS grad class, GPA, SAT, State </td> <td align="center">   7 </td> <td align="center"> 2% </td> </tr>
  <tr> <td> HS grad class, GPA, SAT, State </td> <td align="center">  16 </td> <td align="center"> 4% </td> <td> HS grad class, SAT, Geomarket </td> <td align="center">   6 </td> <td align="center"> 1% </td> </tr>
  <tr> <td> HS grad class, GPA, AP score, Geomarket </td> <td align="center">  15 </td> <td align="center"> 4% </td> <td> HS grad class, GPA, SAT, County </td> <td align="center">   5 </td> <td align="center"> 1% </td> </tr>
  <tr> <td> HS grad class, GPA, SAT, PSAT, State, Segment, Gender </td> <td align="center">  13 </td> <td align="center"> 3% </td> <td> HS grad class, GPA, SAT, PSAT, County </td> <td align="center">   4 </td> <td align="center"> 1% </td> </tr>
  <tr> <td> HS grad class, PSAT, Geomarket </td> <td align="center">  12 </td> <td align="center"> 3% </td> <td> HS grad class, GPA, PSAT, State </td> <td align="center">   2 </td> <td align="center"> 0% </td> </tr>
  <tr> <td> HS grad class, SAT, State, Low SES, College size </td> <td align="center">  11 </td> <td align="center"> 3% </td> <td> HS grad class, SAT, Geomarket, College type </td> <td align="center">   2 </td> <td align="center"> 0% </td> </tr>
   </table>


--- .subsection

# RQ3 


--- .subsubsection

# Characteristics by filters
## Prospect characteristics across individual filter criteria

<!-- html table generated in R 4.2.1 by xtable 1.8-4 package -->
<!-- Fri Mar 24 07:54:33 2023 -->
<table style="font-size:11px;">
  <tr style="text-align: center;"><th colspan="3" style="border-bottom: none;"></th><th colspan="5">Academic</th><th style="border-bottom: none;"><th colspan="5">Geographic</th><th style="border-bottom: none;"></th><th colspan="2">Demographic</th></tr><tr style="text-align:center;"><th width="15px;"></th><th></th><th>All domestic</th><th>GPA</th><th>PSAT</th><th>SAT</th><th>HS rank</th><th>AP score</th><th width="5px;"></th><th>Zip code</th><th>State</th><th>Geomarket</th><th>Segment</th><th>CBSA</th><th width="5px;"></th><th>Race</th><th>Gender</th></tr> <tr> <td> Total </td> <td>   </td> <td align="center"> 3,547,620 </td> <td align="center"> 1,101,266 </td> <td align="center"> 1,812,447 </td> <td align="center"> 971,237 </td> <td align="center"> 146,660 </td> <td align="center"> 75,479 </td> <td align="center">   </td> <td align="center"> 165,924 </td> <td align="center"> 1,173,678 </td> <td align="center"> 1,056,951 </td> <td align="center"> 186,519 </td> <td align="center"> 146,313 </td> <td align="center">   </td> <td align="center"> 279,626 </td> <td align="center"> 39,546 </td> </tr>
   <tr style="font-weight:900"><td colspan="2">Location</td></tr><tr> <td>   </td> <td> % In-state </td> <td align="center"> 38 </td> <td align="center"> 62 </td> <td align="center"> 30 </td> <td align="center"> 54 </td> <td align="center"> 83 </td> <td align="center"> 42 </td> <td align="center">   </td> <td align="center"> 98 </td> <td align="center"> 48 </td> <td align="center"> 17 </td> <td align="center"> 15 </td> <td align="center"> 4 </td> <td align="center">   </td> <td align="center"> 59 </td> <td align="center"> 6 </td> </tr>
  <tr> <td>   </td> <td> % Out-of-state </td> <td align="center"> 62 </td> <td align="center"> 38 </td> <td align="center"> 70 </td> <td align="center"> 46 </td> <td align="center"> 17 </td> <td align="center"> 58 </td> <td align="center">   </td> <td align="center"> 2 </td> <td align="center"> 52 </td> <td align="center"> 83 </td> <td align="center"> 85 </td> <td align="center"> 96 </td> <td align="center">   </td> <td align="center"> 41 </td> <td align="center"> 94 </td> </tr>
   <tr style="font-weight:900"><td colspan="2">Race/ethnicity</td></tr><tr> <td>   </td> <td> % White </td> <td align="center"> 48 </td> <td align="center"> 45 </td> <td align="center"> 50 </td> <td align="center"> 47 </td> <td align="center"> 51 </td> <td align="center"> 17 </td> <td align="center">   </td> <td align="center"> 43 </td> <td align="center"> 42 </td> <td align="center"> 57 </td> <td align="center"> 51 </td> <td align="center"> 53 </td> <td align="center">   </td> <td align="center"> 25 </td> <td align="center"> 47 </td> </tr>
  <tr> <td>   </td> <td> % Asian </td> <td align="center"> 16 </td> <td align="center"> 15 </td> <td align="center"> 17 </td> <td align="center"> 15 </td> <td align="center"> 10 </td> <td align="center"> 7 </td> <td align="center">   </td> <td align="center"> 13 </td> <td align="center"> 18 </td> <td align="center"> 13 </td> <td align="center"> 27 </td> <td align="center"> 28 </td> <td align="center">   </td> <td align="center"> 5 </td> <td align="center"> 38 </td> </tr>
  <tr> <td>   </td> <td> % Black </td> <td align="center"> 5 </td> <td align="center"> 7 </td> <td align="center"> 4 </td> <td align="center"> 7 </td> <td align="center"> 8 </td> <td align="center"> 17 </td> <td align="center">   </td> <td align="center"> 8 </td> <td align="center"> 5 </td> <td align="center"> 4 </td> <td align="center"> 3 </td> <td align="center"> 2 </td> <td align="center">   </td> <td align="center"> 11 </td> <td align="center"> 1 </td> </tr>
  <tr> <td>   </td> <td> % Latinx </td> <td align="center"> 21 </td> <td align="center"> 24 </td> <td align="center"> 19 </td> <td align="center"> 22 </td> <td align="center"> 23 </td> <td align="center"> 46 </td> <td align="center">   </td> <td align="center"> 27 </td> <td align="center"> 24 </td> <td align="center"> 16 </td> <td align="center"> 11 </td> <td align="center"> 8 </td> <td align="center">   </td> <td align="center"> 46 </td> <td align="center"> 6 </td> </tr>
  <tr> <td>   </td> <td> % AI/AN </td> <td align="center"> 1 </td> <td align="center"> 1 </td> <td align="center"> 1 </td> <td align="center"> 0 </td> <td align="center"> 1 </td> <td align="center"> 1 </td> <td align="center">   </td> <td align="center"> 1 </td> <td align="center"> 1 </td> <td align="center"> 0 </td> <td align="center"> 0 </td> <td align="center"> 0 </td> <td align="center">   </td> <td align="center"> 2 </td> <td align="center"> 0 </td> </tr>
  <tr> <td>   </td> <td> % NH/PI </td> <td align="center"> 0 </td> <td align="center"> 0 </td> <td align="center"> 0 </td> <td align="center"> 0 </td> <td align="center"> 0 </td> <td align="center"> 1 </td> <td align="center">   </td> <td align="center"> 0 </td> <td align="center"> 0 </td> <td align="center"> 0 </td> <td align="center"> 0 </td> <td align="center"> 0 </td> <td align="center">   </td> <td align="center"> 0 </td> <td align="center"> 0 </td> </tr>
  <tr> <td>   </td> <td> % Multiracial </td> <td align="center"> 5 </td> <td align="center"> 5 </td> <td align="center"> 5 </td> <td align="center"> 5 </td> <td align="center"> 5 </td> <td align="center"> 10 </td> <td align="center">   </td> <td align="center"> 4 </td> <td align="center"> 6 </td> <td align="center"> 5 </td> <td align="center"> 5 </td> <td align="center"> 5 </td> <td align="center">   </td> <td align="center"> 9 </td> <td align="center"> 5 </td> </tr>
  <tr> <td>   </td> <td> % Other </td> <td align="center"> 0 </td> <td align="center"> 0 </td> <td align="center"> 0 </td> <td align="center"> 0 </td> <td align="center"> 0 </td> <td align="center"> 0 </td> <td align="center">   </td> <td align="center"> 0 </td> <td align="center"> 0 </td> <td align="center"> 0 </td> <td align="center"> 0 </td> <td align="center"> 0 </td> <td align="center">   </td> <td align="center"> 0 </td> <td align="center"> 0 </td> </tr>
  <tr> <td>   </td> <td> % No response </td> <td align="center"> 4 </td> <td align="center"> 3 </td> <td align="center"> 3 </td> <td align="center"> 3 </td> <td align="center"> 2 </td> <td align="center"> 1 </td> <td align="center">   </td> <td align="center"> 4 </td> <td align="center"> 3 </td> <td align="center"> 4 </td> <td align="center"> 3 </td> <td align="center"> 3 </td> <td align="center">   </td> <td align="center"> 2 </td> <td align="center"> 3 </td> </tr>
  <tr> <td>   </td> <td> % Missing </td> <td align="center"> 0 </td> <td align="center"> 0 </td> <td align="center"> 1 </td> <td align="center"> 0 </td> <td align="center"> 0 </td> <td align="center"> 0 </td> <td align="center">   </td> <td align="center"> 1 </td> <td align="center"> 1 </td> <td align="center"> 1 </td> <td align="center"> 0 </td> <td align="center"> 0 </td> <td align="center">   </td> <td align="center"> 0 </td> <td align="center"> 0 </td> </tr>
   <tr style="font-weight:900"><td colspan="2">Gender</td></tr><tr> <td>   </td> <td> % Male </td> <td align="center"> 34 </td> <td align="center"> 19 </td> <td align="center"> 37 </td> <td align="center"> 18 </td> <td align="center"> 0 </td> <td align="center"> 3 </td> <td align="center">   </td> <td align="center"> 46 </td> <td align="center"> 24 </td> <td align="center"> 48 </td> <td align="center"> 6 </td> <td align="center"> 0 </td> <td align="center">   </td> <td align="center"> 11 </td> <td align="center"> 0 </td> </tr>
  <tr> <td>   </td> <td> % Female </td> <td align="center"> 36 </td> <td align="center"> 23 </td> <td align="center"> 40 </td> <td align="center"> 20 </td> <td align="center"> 1 </td> <td align="center"> 15 </td> <td align="center">   </td> <td align="center"> 54 </td> <td align="center"> 27 </td> <td align="center"> 52 </td> <td align="center"> 9 </td> <td align="center"> 0 </td> <td align="center">   </td> <td align="center"> 12 </td> <td align="center"> 33 </td> </tr>
  <tr> <td>   </td> <td> % Other  </td> <td align="center"> 0 </td> <td align="center"> 0 </td> <td align="center"> 0 </td> <td align="center"> 0 </td> <td align="center"> 0 </td> <td align="center"> 0 </td> <td align="center">   </td> <td align="center"> 0 </td> <td align="center"> 0 </td> <td align="center"> 0 </td> <td align="center"> 0 </td> <td align="center"> 0 </td> <td align="center">   </td> <td align="center"> 0 </td> <td align="center"> 0 </td> </tr>
  <tr> <td>   </td> <td> % Missing  </td> <td align="center"> 30 </td> <td align="center"> 58 </td> <td align="center"> 22 </td> <td align="center"> 63 </td> <td align="center"> 99 </td> <td align="center"> 82 </td> <td align="center">   </td> <td align="center"> 0 </td> <td align="center"> 49 </td> <td align="center"> 0 </td> <td align="center"> 85 </td> <td align="center"> 1 </td> <td align="center">   </td> <td align="center"> 77 </td> <td align="center"> 67 </td> </tr>
   <tr style="font-weight:900"><td colspan="2">Household income</td></tr><tr> <td>   </td> <td> Median income </td> <td align="center"> $107K </td> <td align="center"> $105K </td> <td align="center"> $108K </td> <td align="center"> $105K </td> <td align="center"> $99K </td> <td align="center"> $90K </td> <td align="center">   </td> <td align="center"> $97K </td> <td align="center"> $105K </td> <td align="center"> $107K </td> <td align="center"> $130K </td> <td align="center"> $135K </td> <td align="center">   </td> <td align="center"> $94K </td> <td align="center"> $127K </td> </tr>
   <tr style="font-weight:900"><td colspan="2">Locale</td></tr><tr> <td>   </td> <td> % City </td> <td align="center"> 27 </td> <td align="center"> 27 </td> <td align="center"> 27 </td> <td align="center"> 26 </td> <td align="center"> 26 </td> <td align="center"> 31 </td> <td align="center">   </td> <td align="center"> 31 </td> <td align="center"> 30 </td> <td align="center"> 23 </td> <td align="center"> 24 </td> <td align="center"> 22 </td> <td align="center">   </td> <td align="center"> 29 </td> <td align="center"> 26 </td> </tr>
  <tr> <td>   </td> <td> % Suburban </td> <td align="center"> 44 </td> <td align="center"> 47 </td> <td align="center"> 44 </td> <td align="center"> 48 </td> <td align="center"> 53 </td> <td align="center"> 40 </td> <td align="center">   </td> <td align="center"> 42 </td> <td align="center"> 42 </td> <td align="center"> 46 </td> <td align="center"> 54 </td> <td align="center"> 57 </td> <td align="center">   </td> <td align="center"> 47 </td> <td align="center"> 49 </td> </tr>
  <tr> <td>   </td> <td> % Rural - Fringe </td> <td align="center"> 22 </td> <td align="center"> 20 </td> <td align="center"> 22 </td> <td align="center"> 20 </td> <td align="center"> 15 </td> <td align="center"> 23 </td> <td align="center">   </td> <td align="center"> 19 </td> <td align="center"> 22 </td> <td align="center"> 23 </td> <td align="center"> 19 </td> <td align="center"> 19 </td> <td align="center">   </td> <td align="center"> 19 </td> <td align="center"> 23 </td> </tr>
  <tr> <td>   </td> <td> % Rural - Distant </td> <td align="center"> 6 </td> <td align="center"> 6 </td> <td align="center"> 5 </td> <td align="center"> 6 </td> <td align="center"> 6 </td> <td align="center"> 5 </td> <td align="center">   </td> <td align="center"> 7 </td> <td align="center"> 6 </td> <td align="center"> 6 </td> <td align="center"> 2 </td> <td align="center"> 1 </td> <td align="center">   </td> <td align="center"> 6 </td> <td align="center"> 2 </td> </tr>
  <tr> <td>   </td> <td> % Rural - Remote </td> <td align="center"> 1 </td> <td align="center"> 0 </td> <td align="center"> 1 </td> <td align="center"> 0 </td> <td align="center"> 0 </td> <td align="center"> 0 </td> <td align="center">   </td> <td align="center"> 1 </td> <td align="center"> 1 </td> <td align="center"> 1 </td> <td align="center"> 0 </td> <td align="center"> 0 </td> <td align="center">   </td> <td align="center"> 0 </td> <td align="center"> 0 </td> </tr>
  <tr> <td>   </td> <td> % Missing   </td> <td align="center"> 0 </td> <td align="center"> 0 </td> <td align="center"> 0 </td> <td align="center"> 0 </td> <td align="center"> 0 </td> <td align="center"> 0 </td> <td align="center">   </td> <td align="center"> 0 </td> <td align="center"> 0 </td> <td align="center"> 0 </td> <td align="center"> 0 </td> <td align="center"> 0 </td> <td align="center">   </td> <td align="center"> 0 </td> <td align="center"> 0 </td> </tr>
   </table>



--- .subsubsection

# Geodemographic segment filters
## Filter by neighborhood segments

<!-- html table generated in R 4.2.1 by xtable 1.8-4 package -->
<!-- Fri Mar 24 07:54:33 2023 -->
<table style="font-size:10px;" id="cluster-en">
  <tr style="text-align:center;"><th style="text-align:left;">2011 D+ Cluster</th><th>SAT Math</th><th>SAT CR</th><th>Going Out of State</th><th>Percent NonWhite</th><th>Need Financial Aid</th><th>Med Income</th></tr> <tr> <td> 51 </td> <td align="center"> 546.00 </td> <td align="center"> 533.00 </td> <td align="center"> 32% </td> <td align="center"> 30% </td> <td align="center"> 57% </td> <td align="center"> $95,432 </td> </tr>
  <tr> <td> 52 </td> <td align="center"> 480.00 </td> <td align="center"> 470.00 </td> <td align="center"> 30% </td> <td align="center"> 58% </td> <td align="center"> 71% </td> <td align="center"> $63,578 </td> </tr>
  <tr> <td> 53 </td> <td align="center"> 561.00 </td> <td align="center"> 544.00 </td> <td align="center"> 32% </td> <td align="center"> 50% </td> <td align="center"> 55% </td> <td align="center"> $92,581 </td> </tr>
  <tr> <td> 54 </td> <td align="center"> 458.00 </td> <td align="center"> 443.00 </td> <td align="center"> 25% </td> <td align="center"> 83% </td> <td align="center"> 76% </td> <td align="center"> $38,977 </td> </tr>
  <tr> <td> 55 </td> <td align="center"> 566.00 </td> <td align="center"> 565.00 </td> <td align="center"> 52% </td> <td align="center"> 24% </td> <td align="center"> 63% </td> <td align="center"> $71,576 </td> </tr>
  <tr> <td> 56 </td> <td align="center"> 420.00 </td> <td align="center"> 411.00 </td> <td align="center"> 29% </td> <td align="center"> 93% </td> <td align="center"> 66% </td> <td align="center"> $35,308 </td> </tr>
  <tr> <td> 57 </td> <td align="center"> 541.00 </td> <td align="center"> 519.00 </td> <td align="center"> 52% </td> <td align="center"> 47% </td> <td align="center"> 43% </td> <td align="center"> $67,394 </td> </tr>
  <tr> <td> 58 </td> <td align="center"> 533.00 </td> <td align="center"> 489.00 </td> <td align="center"> 28% </td> <td align="center"> 87% </td> <td align="center"> 69% </td> <td align="center"> $68,213 </td> </tr>
  <tr> <td> 59 </td> <td align="center"> 561.00 </td> <td align="center"> 562.00 </td> <td align="center"> 52% </td> <td align="center"> 24% </td> <td align="center"> 74% </td> <td align="center"> $54,750 </td> </tr>
  <tr> <td> 60 </td> <td align="center"> 589.00 </td> <td align="center"> 590.00 </td> <td align="center"> 63% </td> <td align="center"> 37% </td> <td align="center"> 36% </td> <td align="center"> $104,174 </td> </tr>
  <tr> <td> 61 </td> <td align="center"> 585.00 </td> <td align="center"> 567.00 </td> <td align="center"> 51% </td> <td align="center"> 30% </td> <td align="center"> 40% </td> <td align="center"> $123,858 </td> </tr>
  <tr> <td> 62 </td> <td align="center"> 596.00 </td> <td align="center"> 595.00 </td> <td align="center"> 67% </td> <td align="center"> 24% </td> <td align="center"> 72% </td> <td align="center"> $59,824 </td> </tr>
  <tr> <td> 63 </td> <td align="center"> 548.00 </td> <td align="center"> 541.00 </td> <td align="center"> 39% </td> <td align="center"> 23% </td> <td align="center"> 65% </td> <td align="center"> $69,347 </td> </tr>
  <tr> <td> 64 </td> <td align="center"> 466.00 </td> <td align="center"> 466.00 </td> <td align="center"> 48% </td> <td align="center"> 34% </td> <td align="center"> 29% </td> <td align="center"> $49,829 </td> </tr>
  <tr> <td> 65 </td> <td align="center"> 440.00 </td> <td align="center"> 433.00 </td> <td align="center"> 23% </td> <td align="center"> 93% </td> <td align="center"> 78% </td> <td align="center"> $45,081 </td> </tr>
  <tr> <td> 66 </td> <td align="center"> 499.00 </td> <td align="center"> 492.00 </td> <td align="center"> 20% </td> <td align="center"> 12% </td> <td align="center"> 76% </td> <td align="center"> $50,453 </td> </tr>
  <tr> <td> 67 </td> <td align="center"> 519.00 </td> <td align="center"> 501.00 </td> <td align="center"> 27% </td> <td align="center"> 53% </td> <td align="center"> 59% </td> <td align="center"> $60,960 </td> </tr>
  <tr> <td> 68 </td> <td align="center"> 552.00 </td> <td align="center"> 558.00 </td> <td align="center"> 52% </td> <td align="center"> 35% </td> <td align="center"> 65% </td> <td align="center"> $57,902 </td> </tr>
  <tr> <td> 69 </td> <td align="center"> 534.00 </td> <td align="center"> 521.00 </td> <td align="center"> 37% </td> <td align="center"> 19% </td> <td align="center"> 65% </td> <td align="center"> $88,100 </td> </tr>
  <tr> <td> 70 </td> <td align="center"> 613.00 </td> <td align="center"> 598.00 </td> <td align="center"> 65% </td> <td align="center"> 29% </td> <td align="center"> 61% </td> <td align="center"> $86,381 </td> </tr>
  <tr> <td> 71 </td> <td align="center"> 405.00 </td> <td align="center"> 408.00 </td> <td align="center"> 39% </td> <td align="center"> 97% </td> <td align="center"> 68% </td> <td align="center"> $42,661 </td> </tr>
  <tr> <td> 72 </td> <td align="center"> 399.00 </td> <td align="center"> 397.00 </td> <td align="center"> 31% </td> <td align="center"> 87% </td> <td align="center"> 47% </td> <td align="center"> $32,708 </td> </tr>
  <tr> <td> 73 </td> <td align="center"> 528.00 </td> <td align="center"> 514.00 </td> <td align="center"> 29% </td> <td align="center"> 42% </td> <td align="center"> 62% </td> <td align="center"> $90,849 </td> </tr>
  <tr> <td> 74 </td> <td align="center"> 433.00 </td> <td align="center"> 435.00 </td> <td align="center"> 29% </td> <td align="center"> 84% </td> <td align="center"> 79% </td> <td align="center"> $44,065 </td> </tr>
  <tr> <td> 75 </td> <td align="center"> 459.00 </td> <td align="center"> 457.00 </td> <td align="center"> 28% </td> <td align="center"> 85% </td> <td align="center"> 72% </td> <td align="center"> $50,421 </td> </tr>
  <tr> <td> 76 </td> <td align="center"> 514.00 </td> <td align="center"> 509.00 </td> <td align="center"> 27% </td> <td align="center"> 38% </td> <td align="center"> 64% </td> <td align="center"> $61,332 </td> </tr>
  <tr> <td> 77 </td> <td align="center"> 502.00 </td> <td align="center"> 492.00 </td> <td align="center"> 26% </td> <td align="center"> 18% </td> <td align="center"> 75% </td> <td align="center"> $62,372 </td> </tr>
  <tr> <td> 78 </td> <td align="center"> 594.00 </td> <td align="center"> 578.00 </td> <td align="center"> 56% </td> <td align="center"> 26% </td> <td align="center"> 39% </td> <td align="center"> $134,400 </td> </tr>
  <tr> <td> 79 </td> <td align="center"> 550.00 </td> <td align="center"> 551.00 </td> <td align="center"> 57% </td> <td align="center"> 32% </td> <td align="center"> 74% </td> <td align="center"> $40,909 </td> </tr>
  <tr> <td> 80 </td> <td align="center"> 534.00 </td> <td align="center"> 527.00 </td> <td align="center"> 39% </td> <td align="center"> 39% </td> <td align="center"> 65% </td> <td align="center"> $49,877 </td> </tr>
  <tr> <td> 81 </td> <td align="center"> 491.00 </td> <td align="center"> 483.00 </td> <td align="center"> 27% </td> <td align="center"> 57% </td> <td align="center"> 72% </td> <td align="center"> $63,030 </td> </tr>
  <tr> <td> 82 </td> <td align="center"> 496.00 </td> <td align="center"> 491.00 </td> <td align="center"> 29% </td> <td align="center"> 21% </td> <td align="center"> 75% </td> <td align="center"> $53,465 </td> </tr>
  <tr> <td> 83 </td> <td align="center"> 500.00 </td> <td align="center"> 490.00 </td> <td align="center"> 19% </td> <td align="center"> 26% </td> <td align="center"> 71% </td> <td align="center"> $49,335 </td> </tr>
  <tr> <td> Total </td> <td align="center"> 512.00 </td> <td align="center"> 502.00 </td> <td align="center"> 32% </td> <td align="center"> 43% </td> <td align="center"> 65% </td> <td align="center"> $70,231 </td> </tr>
   </table>


---

## Filter by high school segments

<!-- html table generated in R 4.2.1 by xtable 1.8-4 package -->
<!-- Fri Mar 24 07:54:34 2023 -->
<table style="font-size:10px;" id="cluster-hs">
  <tr style="text-align:center;"><th style="text-align:left;">2011 D+ Cluster</th><th>SAT Math</th><th>SAT CR</th><th>Going Out of State</th><th>Percent NonWhite</th><th>Need Financial Aid</th><th>Med Income</th></tr> <tr> <td> 51 </td> <td align="center"> 462.00 </td> <td align="center"> 457.00 </td> <td align="center"> 14% </td> <td align="center"> 33% </td> <td align="center"> 68% </td> <td align="center"> $40,918 </td> </tr>
  <tr> <td> 52 </td> <td align="center"> 489.00 </td> <td align="center"> 496.00 </td> <td align="center"> 81% </td> <td align="center"> 99% </td> <td align="center"> 77% </td> <td align="center"> $64,730 </td> </tr>
  <tr> <td> 53 </td> <td align="center"> 471.00 </td> <td align="center"> 484.00 </td> <td align="center"> 28% </td> <td align="center"> 38% </td> <td align="center"> 62% </td> <td align="center"> $60,833 </td> </tr>
  <tr> <td> 54 </td> <td align="center"> 376.00 </td> <td align="center"> 371.00 </td> <td align="center"> 33% </td> <td align="center"> 96% </td> <td align="center"> 38% </td> <td align="center"> $38,146 </td> </tr>
  <tr> <td> 55 </td> <td align="center"> 489.00 </td> <td align="center"> 481.00 </td> <td align="center"> 39% </td> <td align="center"> 46% </td> <td align="center"> 44% </td> <td align="center"> $71,845 </td> </tr>
  <tr> <td> 56 </td> <td align="center"> 536.00 </td> <td align="center"> 508.00 </td> <td align="center"> 73% </td> <td align="center"> 43% </td> <td align="center"> 49% </td> <td align="center"> $63,967 </td> </tr>
  <tr> <td> 57 </td> <td align="center"> 434.00 </td> <td align="center"> 435.00 </td> <td align="center"> 29% </td> <td align="center"> 82% </td> <td align="center"> 79% </td> <td align="center"> $48,301 </td> </tr>
  <tr> <td> 58 </td> <td align="center"> 592.00 </td> <td align="center"> 577.00 </td> <td align="center"> 51% </td> <td align="center"> 27% </td> <td align="center"> 32% </td> <td align="center"> $104,509 </td> </tr>
  <tr> <td> 59 </td> <td align="center"> 499.00 </td> <td align="center"> 489.00 </td> <td align="center"> 19% </td> <td align="center"> 18% </td> <td align="center"> 74% </td> <td align="center"> $47,685 </td> </tr>
  <tr> <td> 60 </td> <td align="center"> 523.00 </td> <td align="center"> 549.00 </td> <td align="center"> 23% </td> <td align="center"> 30% </td> <td align="center"> 33% </td> <td align="center"> $70,175 </td> </tr>
  <tr> <td> 61 </td> <td align="center"> 485.00 </td> <td align="center"> 370.00 </td> <td align="center"> 33% </td> <td align="center"> 89% </td> <td align="center"> 9% </td> <td align="center"> $61,385 </td> </tr>
  <tr> <td> 62 </td> <td align="center"> 474.00 </td> <td align="center"> 473.00 </td> <td align="center"> 34% </td> <td align="center"> 92% </td> <td align="center"> 67% </td> <td align="center"> $55,515 </td> </tr>
  <tr> <td> 63 </td> <td align="center"> 440.00 </td> <td align="center"> 427.00 </td> <td align="center"> 28% </td> <td align="center"> 86% </td> <td align="center"> 72% </td> <td align="center"> $49,238 </td> </tr>
  <tr> <td> 64 </td> <td align="center"> 606.00 </td> <td align="center"> 542.00 </td> <td align="center"> 37% </td> <td align="center"> 89% </td> <td align="center"> 57% </td> <td align="center"> $81,911 </td> </tr>
  <tr> <td> 65 </td> <td align="center"> 515.00 </td> <td align="center"> 503.00 </td> <td align="center"> 28% </td> <td align="center"> 43% </td> <td align="center"> 65% </td> <td align="center"> $72,692 </td> </tr>
  <tr> <td> 66 </td> <td align="center"> 498.00 </td> <td align="center"> 515.00 </td> <td align="center"> 37% </td> <td align="center"> 37% </td> <td align="center"> 73% </td> <td align="center"> $60,272 </td> </tr>
  <tr> <td> 67 </td> <td align="center"> 526.00 </td> <td align="center"> 546.00 </td> <td align="center"> 48% </td> <td align="center"> 41% </td> <td align="center"> 69% </td> <td align="center"> $71,279 </td> </tr>
  <tr> <td> 68 </td> <td align="center"> 541.00 </td> <td align="center"> 540.00 </td> <td align="center"> 41% </td> <td align="center"> 26% </td> <td align="center"> 62% </td> <td align="center"> $79,260 </td> </tr>
  <tr> <td> 69 </td> <td align="center"> 390.00 </td> <td align="center"> 395.00 </td> <td align="center"> 36% </td> <td align="center"> 92% </td> <td align="center"> 74% </td> <td align="center"> $43,391 </td> </tr>
  <tr> <td> 70 </td> <td align="center"> 595.00 </td> <td align="center"> 581.00 </td> <td align="center"> 56% </td> <td align="center"> 33% </td> <td align="center"> 48% </td> <td align="center"> $105,721 </td> </tr>
  <tr> <td> 71 </td> <td align="center"> 400.00 </td> <td align="center"> 412.00 </td> <td align="center"> 57% </td> <td align="center"> 98% </td> <td align="center"> 80% </td> <td align="center"> $43,137 </td> </tr>
  <tr> <td> 72 </td> <td align="center"> 528.00 </td> <td align="center"> 544.00 </td> <td align="center"> 35% </td> <td align="center"> 25% </td> <td align="center"> 64% </td> <td align="center"> $70,018 </td> </tr>
  <tr> <td> 73 </td> <td align="center"> 451.00 </td> <td align="center"> 438.00 </td> <td align="center"> 24% </td> <td align="center"> 89% </td> <td align="center"> 76% </td> <td align="center"> $48,406 </td> </tr>
  <tr> <td> 74 </td> <td align="center"> 654.00 </td> <td align="center"> 579.00 </td> <td align="center"> 76% </td> <td align="center"> 80% </td> <td align="center"> 46% </td> <td align="center"> $59,089 </td> </tr>
  <tr> <td> 75 </td> <td align="center"> 514.00 </td> <td align="center"> 502.00 </td> <td align="center"> 31% </td> <td align="center"> 20% </td> <td align="center"> 71% </td> <td align="center"> $72,850 </td> </tr>
  <tr> <td> 76 </td> <td align="center"> 600.00 </td> <td align="center"> 584.00 </td> <td align="center"> 72% </td> <td align="center"> 50% </td> <td align="center"> 28% </td> <td align="center"> $90,265 </td> </tr>
  <tr> <td> 77 </td> <td align="center"> 595.00 </td> <td align="center"> 508.00 </td> <td align="center"> 64% </td> <td align="center"> 75% </td> <td align="center"> 39% </td> <td align="center"> $39,490 </td> </tr>
  <tr> <td> 78 </td> <td align="center"> 473.00 </td> <td align="center"> 468.00 </td> <td align="center"> 48% </td> <td align="center"> 43% </td> <td align="center"> 22% </td> <td align="center"> $56,703 </td> </tr>
  <tr> <td> 79 </td> <td align="center"> 594.00 </td> <td align="center"> 585.00 </td> <td align="center"> 61% </td> <td align="center"> 26% </td> <td align="center"> 71% </td> <td align="center"> $65,180 </td> </tr>
  <tr> <td> Total </td> <td align="center"> 514.00 </td> <td align="center"> 502.00 </td> <td align="center"> 32% </td> <td align="center"> 44% </td> <td align="center"> 65% </td> <td align="center"> $70,223 </td> </tr>
   </table>


---

## Segment filter prospects by metro

<img src="assets/fig/uiuc-deep-dive-1.png" alt="plot of chunk uiuc-deep-dive" width="90%" />

Filters: HS Class, Segment, GPA (B-A+), PSAT/SAT (1220-1450); State/CBSAs


---

## Segment filter prospects interactive map

<iframe src="https://mpatricia01.github.io/public_requests_eda/outputs/maps/map_segment_green.html" id="uiuc-deep-dive-map" width=100% height=90% allowtransparency="true"></iframe>

<br> 

> "Basic tenet of geodemography is people with similar cultural backgrounds, means, and perspectives naturally gravitate to one another or form relatively homogeneous communities" (College Board, 2011)

--- .subsubsection

# Women in STEM
## Women in STEM prospects by metro

<img src="assets/fig/ucsd-deep-dive-1.png" alt="plot of chunk ucsd-deep-dive" width="90%" />


Filters: HS Class, AP STEM (3 min for in-state; 4 min for out-of-state) _or_ SAT (1200 minimum for in-state; 1300 minimum for out-of-state) with STEM major interest, GPA (B-A+), State (in-state vs. out-of-state)

--- .subsubsection

# Targeting URM students
## Race and ethnicity variables, aggregated vs. alone

<img src="assets/fig/poc-race-deep-dive-1.png" alt="plot of chunk poc-race-deep-dive" width="90%" />


Filters: HS Class, SAT (1200-1380), GPA (B-A+), Race (Latinx, Black, AIAN), State

---

## Purchased profiles for students of color by metro

<img src="assets/fig/poc-prospects-deep-dive-1.png" alt="plot of chunk poc-prospects-deep-dive" width="90%" />



---

## Purchased profiles for students of color interactive map

<iframe src="https://mpatricia01.github.io/public_requests_eda/outputs/maps/map_poc_green.html" id="poc-prospects-deep-dive-map" width=100% height=100% allowtransparency="true"></iframe>



--- .subsubsection

# Zip code & test score filters
## Los Angeles prospects from top income decile zip codes

<img src="assets/fig/asu-la-deep-dive-1.png" alt="plot of chunk asu-la-deep-dive" width="90%" />

Filters: HS Class, PSAT (high/low) or SAT (high/low), Zip Code (by affluence)


--- .section

# Discussion

--- 

## Future research on student list products

Improve this paper enough to get published

- How to motivate targeted analyses about how universities utilize student list products

<br>
Papers on College Board filters that create geographic borders from analyses of past college enrollment

- Geomarket filters slice metropolitan areas into several education markets
- Geodemography filters categorize neighborhoods and high schools into clusters

<br>
Explore link between student list products and extension of credit

- Parallel origins of consumer credit reports and student lists (Hoxby, 2009; Leyshon and Thrift, 1999)
  - Reduce information assymetry by providing businesses information about customers
  - Business model moves from evaluation of applicants to active courtship of desired customers
- Consumer credit reports regulated under Fair Credit Reporting Act and Consumer Finance Protection Act because they lead to extension of credit
- Student list products systematically lead to student loans

<br>
Regulatory policy

- Students list products are powerful tools, can be used for good or bad
- Should policymakers continue tolerating products likely to do harm because they also do good?


--- #references

# References
## &nbsp;

<div style="overflow-y: scroll;height: 500px;">
<p><a id='bib-RN4775'></a><a href="#cite-RN4775">[1]</a><cite>
R. Benjamin.
<em>Race after technology: Abolitionist tools for the new Jim code</em>.
Medford, MA: Polity, 2019.
ISBN: 9781509526390 (hardback)
9781509526406 (paperback).</cite></p>

<p><a id='bib-RN4814'></a><a href="#cite-RN4814">[2]</a><cite>
E. Bonilla-Silva.
&ldquo;Rethinking racism: Toward a structural interpretation&rdquo;.
In: <em>American Sociological Review</em> 62.3 (1997), pp. 465-480.
ISSN: 0003-1224.
DOI: <a href="https://doi.org/10.2307/2657316">10.2307/2657316</a>.
URL: <a href="%3CGo%20to%20ISI%3E://WOS:A1997XG45300007">&lt;Go to ISI&gt;://WOS:A1997XG45300007</a>.</cite></p>

<p><a id='bib-RN4565'></a><a href="#cite-RN4565">[3]</a><cite>
College Board.
<em>Segment Analysis Service: An educationally relevant geodemographic tagging service</em>.
Tech. rep.
College Board, 2011.
URL: <a href="https://secure-media.collegeboard.org/mSSS/media/pdf/segment-analysis-service-overview.pdf">https://secure-media.collegeboard.org/mSSS/media/pdf/segment-analysis-service-overview.pdf</a>.</cite></p>

<p><a id='bib-cottom2017lower'></a><a href="#cite-cottom2017lower">[4]</a><cite>
T. M. Cottom.
<em>Lower ed: The troubling rise of for-profit colleges in the new economy</em>.
New Press, The, 2017.</cite></p>

<p><a id='bib-RN6012'></a><a href="#cite-RN6012">[5]</a><cite>
R. Freedle.
&ldquo;Correcting the SAT's ethnic and social-class bias: A method for reestimating SAT scores&rdquo;.
In: <em>Harvard Educational Review</em> 73.1 (2003), pp. 1&ndash;43.</cite></p>

<p><a id='bib-RN4778'></a><a href="#cite-RN4778">[6]</a><cite>
D. Hirschman and E. A. Bosk.
&ldquo;Standardizing biases: Selection devices and the quantification of race&rdquo;.
In: <em>Sociology of Race and Ethnicity</em> 6.3 (2020), pp. 348-364.
DOI: <a href="https://doi.org/10.1177/2332649219844797">10.1177/2332649219844797</a>.
URL: <a href="https://journals.sagepub.com/doi/abs/10.1177/2332649219844797">https://journals.sagepub.com/doi/abs/10.1177/2332649219844797</a>.</cite></p>

<p><a id='bib-RN4324'></a><a href="#cite-RN4324">[7]</a><cite>
M. M. Holland.
<em>Divergent paths to college: Race, class, and inequality in high schools</em>.
Rutgers University Press, 2019.
DOI: <a href="https://doi.org/10.36019/9780813590288">10.36019/9780813590288</a>.</cite></p>

<p><a id='bib-RN4739'></a><a href="#cite-RN4739">[8]</a><cite>
J. Howell, M. H. Hurwitz, Z. Mabel, et al.
<em>Participation in student search service is associated with higher college enrollment and completion</em>.
Tech. rep.
College Board, 2021.
URL: <a href="https://cbsearch.collegeboard.org/pdf/college-outreach-and-student-outcomes.pdf">https://cbsearch.collegeboard.org/pdf/college-outreach-and-student-outcomes.pdf</a>.</cite></p>

<p><a id='bib-RN2133'></a><a href="#cite-RN2133">[9]</a><cite>
C. M. Hoxby.
<em>How the changing market structure of U.S. higher education explains college tuition</em>.
Tech. rep. Working Paper 6323.
National Bureau of Economic Research, 1997.
URL: <a href="http://www.nber.org/papers/W6323.pdf">http://www.nber.org/papers/W6323.pdf</a>.</cite></p>

<p><a id='bib-RN2247'></a><a href="#cite-RN2247">[10]</a><cite>
C. M. Hoxby.
&ldquo;The changing selectivity of American colleges&rdquo;.
In: <em>Journal of Economic Perspectives</em> 23.4 (2009), pp. 95-118.
ISSN: 0895-3309.
URL: <a href="%3CGo%20to%20ISI%3E://000272677100005">&lt;Go to ISI&gt;://000272677100005</a>.</cite></p>

<p><a id='bib-RN4407'></a><a href="#cite-RN4407">[11]</a><cite>
S. R. Khan.
<em>Privilege: The making of an adolescent elite at St. Paul's School</em>.
Princeton studies in cultural sociology.
Princeton, N.J.: Princeton University Press, 2011, p. 232.
ISBN: 9780691145280 (alk. paper)
0691145288 (alk. paper)
9780691156231 (pbk.)
0691156239 (pbk.).</cite></p>

<p><a id='bib-RN4880'></a><a href="#cite-RN4880">[12]</a><cite>
A. Leyshon and N. Thrift.
&ldquo;Lists come alive: electronic systems of knowledge and the rise of credit-scoring in retail banking&rdquo;.
In: <em>Economy and Society</em> 28.3 (1999), pp. 434-466.
ISSN: 0308-5147.
DOI: <a href="https://doi.org/10.1080/03085149900000013">10.1080/03085149900000013</a>.
URL: <a href="https://doi.org/10.1080/03085149900000013">https://doi.org/10.1080/03085149900000013</a>.</cite></p>

<p><a id='bib-RN4786'></a><a href="#cite-RN4786">[13]</a><cite>
D. Norris.
&ldquo;Embedding racism: City government credit ratings and the institutionalization of race in markets&rdquo;.
In: <em>Social Problems</em> (2021).
ISSN: 0037-7791.
DOI: <a href="https://doi.org/10.1093/socpro/spab066">10.1093/socpro/spab066</a>.
URL: <a href="https://doi.org/10.1093/socpro/spab066">https://doi.org/10.1093/socpro/spab066</a>.</cite></p>

<p><a id='bib-RN4849'></a><a href="#cite-RN4849">[14]</a><cite>
C. O'Neil.
<em>Weapons of math destruction: how big data increases inequality and threatens democracy</em>.
First edition..
New York: Crown, 2016, p. x, 259 pages.
ISBN: 9780553418811 (hardcover)
9780553418835 (softcover).</cite></p>

<p><a id='bib-RN4520'></a><a href="#cite-RN4520">[15]</a><cite>
A. Posecznick.
<em>Selling hope and college merit, markets, and recruitment in an unranked school</em>.
Ithaca ; London: Cornell University Press, 2017.
ISBN: 9781501707582
9781501709821.
URL: <a href="https://muse.jhu.edu/book/52616">https://muse.jhu.edu/book/52616</a>.</cite></p>

<p><a id='bib-RN4893'></a><a href="#cite-RN4893">[16]</a><cite>
S. F. Reardon, D. Kalogrides, and K. Shores.
&ldquo;The geography of racial/ethnic test score gaps&rdquo;.
In: <em>American Journal of Sociology</em> 124.4 (2019), pp. 1164-1221.
DOI: <a href="https://doi.org/10.1086/700678">10.1086/700678</a>.
URL: <a href="https://www.journals.uchicago.edu/doi/abs/10.1086/700678">https://www.journals.uchicago.edu/doi/abs/10.1086/700678</a>.</cite></p>

<p><a id='bib-RN4853'></a><a href="#cite-RN4853">[17]</a><cite>
A. Rodriguez and E. Hernandez-Hamed.
&ldquo;Understanding unfulfilled AP potential across the participation pipeline by race and income&rdquo;.
In: <em>Teachers College Record</em> 122.9 (2020), p. 38.
ISSN: 0161-4681.
URL: <a href="%3CGo%20to%20ISI%3E://WOS:000595649100009">&lt;Go to ISI&gt;://WOS:000595649100009</a>.</cite></p>

<p><a id='bib-RN4759'></a><a href="#cite-RN4759">[18]</a><cite>
K. G. Salazar.
&ldquo;Recruitment Redlining by Public Research Universities in the Los Angeles and Dallas Metropolitan Areas&rdquo;.
In: <em>The Journal of Higher Education</em> (2022), pp. 1&ndash;37.
DOI: <a href="https://doi.org/10.1080/00221546.2021.2004811">10.1080/00221546.2021.2004811</a>.
URL: <a href="https://doi.org/10.1080/00221546.2021.2004811">https://doi.org/10.1080/00221546.2021.2004811</a>.</cite></p>

<p><a id='bib-RN4758'></a><a href="#cite-RN4758">[19]</a><cite>
K. G. Salazar, O. Jaquette, and C. Han.
&ldquo;Coming Soon to a Neighborhood Near You? Off-Campus Recruiting by Public Research Universities&rdquo;.
In: <em>American Educational Research Journal</em> 58.6 (2021), pp. 1270-1314.
DOI: <a href="https://doi.org/10.3102/00028312211001810">10.3102/00028312211001810</a>.
URL: <a href="https://journals.sagepub.com/doi/abs/10.3102/00028312211001810">https://journals.sagepub.com/doi/abs/10.3102/00028312211001810</a>.</cite></p>

<p><a id='bib-list_empirics'></a><a href="#cite-list_empirics">[20]</a><cite>
K. G. Salazar, O. Jaquette, and C. Han.
<em>Geodemographics of student list purchases: a first look</em>.
Tech. rep.
Washington, DC: TICAS, 2022.
URL: <a href="https://ticas.org/wp-content/uploads/2022/09/Geodemographics-of-Student-List-Purchases_A-First-Look.pdf">https://ticas.org/wp-content/uploads/2022/09/Geodemographics-of-Student-List-Purchases_A-First-Look.pdf</a>.</cite></p>

<p><a id='bib-RN6011'></a><a href="#cite-RN6011">[21]</a><cite>
M. V. Santelices and M. Wilson.
&ldquo;Unfair Treatment? the case of Freedle, the SAT, and the standardization approach to differential item functioning&rdquo;.
In: <em>Harvard Educational Review</em> 80.1 (2010), pp. 106&ndash;133.</cite></p>

<p><a id='bib-RN4894'></a><a href="#cite-RN4894">[22]</a><cite>
J. Smith, J. Howell, and M. Hurwitz.
&ldquo;The impact of college outreach on high schoolers’ college choices: Results from over one thousand natural experiments&rdquo;.
In: <em>Education Finance and Policy</em> 17.1 (2022), pp. 105-128.
ISSN: 1557-3060.
DOI: <a href="https://doi.org/10.1162/edfp_a_00334">10.1162/edfp_a_00334</a>.
URL: <a href="https://doi.org/10.1162/edfp_a_00334">https://doi.org/10.1162/edfp_a_00334</a>.</cite></p>

<p><a id='bib-RN3519'></a><a href="#cite-RN3519">[23]</a><cite>
M. L. Stevens.
<em>Creating a class: College admissions and the education of elites</em>.
Cambridge, MA: Harvard University Press, 2007, p. 308.
ISBN: 9780674026735 (alk. paper) 067402673X (alk. paper).</cite></p>

<p><a id='bib-RN4760'></a><a href="#cite-RN4760">[24]</a><cite>
M. J. N. Tiako, E. South, and V. Ray.
&ldquo;Medical Schools as Racialized Organizations: A Primer&rdquo;.
In: <em>Annals of Internal Medicine</em> 174.8 (2021), pp. 1143-1144.
DOI: <a href="https://doi.org/10.7326/m21-0369%20%25m%2034058105%7D%7B10.7326/m21-0369%20%25m%2034058105%7D."></a></cite></p>
</div>

--- .section

# Appendix

--- .subsection

# RQ1

# Test Thresholds
## GPA

<img src="../outputs/figures/legend_horizontal.png" alt="Enrollment Funnel" style="width:50%;margin:0 auto;">

<div class="row">
  <div class="column">
    <img src="../outputs/figures/p2_gpa_inc.png" alt="P2GPA_inc" style="width:50%">
  </div>
  <div class="column">
    <img src="../outputs/figures/p2_gpa_exc.png" alt="P2GPA_exc" style="width:50%">
  </div>
</div>


--- .subsection

# RQ2

--- .subsubsection

# Data collection
## Summary of data received

<!-- html table generated in R 4.2.1 by xtable 1.8-4 package -->
<!-- Fri Mar 24 07:55:16 2023 -->
<table border=1>
  <tr style="text-align:center;"><th>State</th><th># received order summary</th><th># no order summary</th><th># received list</th><th># no list</th><th># received both</th><th># did not receive both</th></tr> <tr> <td align="center"> CA </td> <td align="center">   9 </td> <td align="center">  23 </td> <td align="center">  13 </td> <td align="center">  19 </td> <td align="center">   9 </td> <td align="center">  23 </td> </tr>
  <tr> <td align="center"> IL </td> <td align="center">   9 </td> <td align="center">   3 </td> <td align="center">   9 </td> <td align="center">   3 </td> <td align="center">   8 </td> <td align="center">   4 </td> </tr>
  <tr> <td align="center"> TX </td> <td align="center">  15 </td> <td align="center">  20 </td> <td align="center">  16 </td> <td align="center">  19 </td> <td align="center">  10 </td> <td align="center">  25 </td> </tr>
   </table>



---

## Orders and prospects purchased

<img src="assets/fig/orders-prospects-purchased-1.png" alt="plot of chunk orders-prospects-purchased" width="90%" />

--- .subsection

--- .subsubsection

# Academic filters
## GPA filter used

<img src="assets/fig/orders-gpa-1.png" alt="plot of chunk orders-gpa" width="90%" />


---

## SAT filter used


<img src="assets/fig/orders-sat-1.png" alt="plot of chunk orders-sat" width="90%" />


---

## PSAT filter used

<img src="assets/fig/orders-psat-1.png" alt="plot of chunk orders-psat" width="90%" />



--- .subsubsection

#  Geographic filters
## State filter used by research universities, out-of-state

<img src="assets/fig/orders-state-research-outofstate-1.png" alt="plot of chunk orders-state-research-outofstate" width="90%" />

---

## State filter used by research universities, in-state

<img src="assets/fig/orders-state-research-instate-1.png" alt="plot of chunk orders-state-research-instate" width="90%" />


--- .subsubsection

# Demographic filters
## Race filter

<img src="assets/fig/orders-race-1.png" alt="plot of chunk orders-race" width="90%" />

