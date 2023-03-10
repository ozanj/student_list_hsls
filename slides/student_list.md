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
bibliography: '../../public_requests_eda/text/bib/eepa_student_list.bib'
csl: '../../public_requests_eda/text/bib/apa.csl'
--- #title








# A Sociological Analysis of Structural Racism in Student List Products

<div id='authors'>
  <div><p>Ozan Jaquette</p><span class='affiliation'>UCLA</span></div>
  <div><p>Karina Salazar</p><span class='affiliation'>University of Arizona</span></div>
  <div><p>Crystal Han</p><span class='affiliation'>Stanford</span></div>
  <div><p>Patrica Martín</p><span class='affiliation'>UCLA</span></div>
</div>

<a class="link" href="https://ozanj.github.io/student_list_hsls/slides/student_list.html" target="_blank">ozanj.github.io/student_list_hsls/slides/student_list.html</a>


--- .section

# Introduction


---

# College Board Search and student outcomes
## Howell, Hurwitz, Mabel, et al. (2021)

<img src="assets/fig/cb-fig-1.png" title="plot of chunk cb-fig" alt="plot of chunk cb-fig" width="90%" />


---

## Scholarship on college access

Extant literatures, not mutually exclusive

- Student behavior
- Behavior of schools and postsecondary institutions (PSIs)
  - Scholarship on enrollment management fits here
      - Scholarship on admissions fits here
- Effects of federal, state, and local policies

<br>

Third-party providers; the other for-profit industry in education

- Schools and PSIs outsource functions to vendors and consultancies (Jaquette, Salazar, and Martin, 2022; Komljenovic, 2021; Komljenovic, 2022)
- Scholars have not investigated how third-party produces and services structure college access

<br>
Developing a literature about algorithmic products

- Literature at the intersections of access, enrollment management, and edtech
- Analyze products purchased by schools and PSIs
- Analyze the organizations that sell these products



---

## Structural racism in algorithmic products

Structural racism

- Processes -- often viewed as neutral or common-sense -- that systematically advantage dominant groups and disadvantage marginalized groups

<br>
Critical turn in higher education research
- Experiences of individual people provide insight about structural racism

<br>
Critical data studies (e.g., and Benjamin, 2019; and Noble, 2018) and sociology of race (e.g., and Cottom, 2020; and Norris, 2021) finds algorithmic reproduce/increase racial inequality
- *Structurally racist inputs*: Seemingly neutral inputs that correlate with race because of historical exclusion from this input (e.g., zip code, AP exam scores)


<br>
**RQ**: What is the relationship between student list search filters (e.g., test score range, zip code) and the characteristics of students who are included vs. excluded by student list purchases?
- Analyze student lists purchased from College Board
- Focus on race and class inequality in which prospects are included/excluded by student list purchases


--- .section

# Background on student Lists


--- .subsection

# Lists vis-a-vis recruiting

---

## The US market for higher education


A national voucher system
- Tuition revenue: household savings; grants and loans from federal, state, and private sources
- Tuition revenue follows students to Title IV institutions

<br>
Students
- Goal: want to attend college
- Problem: don't know all options, where they would be admitted, how much it will cost

<br>
Universities
- Goal: enroll students to survive and other enrollment goals
- Problem: can't rely solely on students who reach out on their own; don't know the prospects or how to contact them


<br>

Student lists
- A matchmaking intermediary that connects institutions to prospects
- "lead generation"
  - Student lists are an example of list-based leads, based on direct mail
  - As opposed to behavioral-based leads (e.g., ads from Google Search)



--- &twocol

## The enrollment funnel

*** =left

Prospects

- Population of desirable potential students

Leads

- Prospects whose contact info has been obtained

Inquiries

- Prospects who have contacted the institution
  - Institution as first contact (leads)
  - Student as first contact

<br>
Interventions along the funnel

- Convert prospects to leads
  - purchase student lists
- Convert leads/inquiries to applicants
  - Email, mail, targeted social media
- Convert admits to enrolles
  - Financial aid packages

*** =right

<center>**The enrollment funnel**</center>

<br>

<img src="../outputs/images/enrollment_funnel.png" alt="Enrollment Funnel" style="width:80%;margin:0 auto;">

Source: [pngwing.com](https://www.pngwing.com/en/free-png-krrpy)

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

- Historically, a price-per-prospect model (e.g., \$0.50 per name)
- ACT and College Board moving to subscription model


<br>

Buying student lists

- "Search filters" control which prospects included/excluded from a purchase
- Commonly used search filters ([Link to ACT filters](https://helpcenter.encoura.org/hc/en-us/articles/360035260452-Prospect-Search-Filters-))
  - Graduation year, HS GPA, test score range, gender, race/ethnicity, geography (e.g., zip-code)
- New filters based on predictive analytics to facilitate micro-targeting
    - e.g., "geodemographic" filters target prospects based on past behavior of nearby students


--- .subsection

# EM Market dynamics


--- 

## Dynamics shaping the market for student list data


From [The Student List Business: Primer and market dynamics](https://ticas.org/wp-content/uploads/2022/09/The-Student-List-Business_-Primer-and-Market-Dynamics.pdf) (Jaquette, Salazar, and Martin, 2022):


1. **Centrality of enrollment management (EM) consulting firms**
  - Purchase student lists on behalf of universities
  - Names are input to firm predictive models and recruiting interventions
<br>

1. **Competition in the 2000s**
  - Technology >> new sources of student list data (e.g., college search engines; software used by high schools) >> entry by new vendors (e.g., Zinch)
  - *Note*: all student list data is derived from user-data from students on platforms
<br>
  
1. **Concentration in the 2010s**
  - Horizontal acquisitions in EM consulting industry (e.g., RuffaloCODY acquires Noel-Levitz)
  - Vertical acquisitions transform market for student list data (e.g., PowerSchool acquires Naviance/Intersect from Hobsons; EAB acquires Cappex)
      - Leverage control over pool of names to sell software-as-service products
<br>

1. **Incumbents College Board and ACT evolve amidst threat from test-optional**
  - Create new search filters that aid micro-targeting of prospects
  - Leverage names database to sell EM consulting
  - Create/buy college search engines



--- .section

# Literature Review

--- .subsection

# Recruiting

--- 

## Sociological scholarship on recruiting

Enrollment funnel: prospects, leads, inquires, applicants, admits, enrolled
- Most scholarship focuses on latter stages (e.g., which applicants get admitted)
- Growing body of research analyzes recruiting "in the wild"
    
<br>
Recruiting from perspective of high school students (Holland, 2019)
- Underrepresented students sensitive to feeling "wanted" by colleges

<br>
Connections between (fancy) high schools and (fancy) colleges from an orgs perspective
- Off-campus recruiting visits indicate a network tie and enrollment priorities
- recruiting from perspective of: private college (Stevens, 2007); private HS counselors (Khan, 2011)
- Recruiting visits by public research universities   (e.g., Salazar, Jaquette, and Han, 2021; and Salazar, 2022)

<br>
Recruiting at open-access PSIs for adults  (e.g., and Cottom, 2017; and Posecznick, 2017)
- For-profits have demand in Black/Latinx communities **because** traditional colleges ignore them

<br>
Hook
- Scholarship assumes that recruiting is something done by colleges
- Ignores products and consultancies that structure recruiting

--- .subsection

# Sociology of race

--- 

## Racialized social systems and structural racism

Most social sciences define racism as ideology held by individuals (e.g., explicit or implicit racial bias)
- Measures societal racism by examining the attitudes of individuals
- Excludes the possibility that institutions can be racist


<br>

Bonilla-Silva (1997): focus on underlying social structure instead of individual ideology

- *Racialized social systems*: “societies that allocate differential economic, political, social, and even psychological rewards to groups along racial lines” (p. 474)
- Racial groups are a social construction of a racialized social system
  - Institutions allocate benefits to racial groups based on socially constructed racial hierarchy
- “Only way to ‘cure’ society of racism is by eliminating its systemic roots” (p. 476) within institutions


<br>
Structural racism

- “systematic racial bias embedded in the ‘normal’ functions of laws and social relations” (Tiako, South, and Ray, 2021, p. 1143); processes viewed as neutral systematically advantage dominant groups.

<br>
Race is fundamental to capitalism (racial capitalism)

- Source of profit is exploitation based on construction of race (Du Bois, 1935; Robinson, 2000)
- Analyses can focus on production (labor) or consumer (e.g., credit, housing) side of economy

--- 

## Algorithms and actuarialism

Algorithms

- "sets of instructions written as code and run on computers" (Burrell and Fourcade, 2021, p. 215)

<br>
Algorithmic products utilize actuarial methods and logic

- _Actuarial methods_ proceed in two steps (Hirschman and Bosk, 2020)
    1. Model previous cases in order to identify determinants of an outcome
    1. Apply these results to future cases in order to make predictions and assign risk levels
- _Acturarialism_ (Simon, 1988)
    - ideology that equates fairness with risk, as determined by predicted probabilities
    - e.g., businesses that have characteristics associated with default should pay higher interest rates

<br>

Actuarialism and standardization

- Actuarial products remove individual judgment from decision-making
- Reduces racial inequity due to prejudice of individual decision-makers (Hirschman and Bosk, 2020)

--- 

## Actuarial methods reproduce structural racism

Classification situations (Fourcade and Healy, 2013)

- Defined as use of actuarial techniques by orgs to categorize consumers into different groups
- Binary classifications: loans offered to consumers with "good" credit, but not bad credit
- Advances in data analytics >> categorize customers into many groups
    - Tiered products with costs and benefits tied to level of risk (e.g., payday loan)
- Predatory inclusion (Seamster and Charron-Chénier, 2017; Cottom, 2020)
  - Target marginalized consumers for "democratizing mobility schemes on extractive terms” 


<br>
Structurally racist inputs

- Actuarial products predict future outcome by modeling determinants using historical data
    - “Predicting the future on the basis of the past threatens to reify and reproduce existing inequalities of treatment by institutions” (Burrell and Fourcade, 2021, p. 224).
- Structurally racist input: determinant correlated with race because people of color have been historically excluded (e.g., Obermeyer, Powers, Vogeli, and Mullainathan, 2019)
- Structural racism in Moody's credit rating algorithm for city governments (Norris, 2021)
  - %Black negatively associated with city rating until control for median household income
  - Median household income is a "racialized input": 
      - Seemingly neutral, structurally racist input that masks structural racism of algorithm


--- 

## Micro-targeting and market segments

- *Micro-targeting*: identify granular segments of society with great precision
- *Market segmentation*: categorize customers into groups for advertisers (e.g., "married sophisticates")

<br>

Racial exclusion is consequence of micro-targeting, market segmentation (Benjamin, 2019; Noble, 2018)

- These technologies *could* be used to target marginalized groups, but in practice they are not
- When developing classification systems, developer bias and structurally racist inputs enter algorithm
- Classification systems designed for profit, do not create audience segments not valued by advertisers


<br>

Micro-targeting and segmentation by Facebook (Cotter, Medeiros, Pak, and Thorson, 2021, p. 1)

- "Driven not by a goal of making all users available to advertisers, but of making the ‘right’ individuals"
- Tells advertisers choose "‘targeting strategy that focuses on reach and precision and eliminates waste'"

<br>
Student list products
- College Board Student Search: “create a real pipeline of best-fit prospects” 
- Ruffalo Noel Levitz (2021): “target the right students in the right markets” by making “the most efficient name purchases using predictive modeling”

<br>
Hook: Sociology of race has not studied products that help orgs identify customers (I think)

--- .section

# Conceptual Framework

--- 

## Conceptual Framework

Primary research question:

- What is the relationship between student list search filters (e.g., test score range, zip code) and the characteristics of students who are included vs. excluded in student lists purchased from College Board?

<br>

Two mechanisms of racial and socioeconomic exclusion in student list products  (Salazar, Jaquette, and Han, 2022):

1. Who is included in the underlying database
1. Structurally racist and classist search filters

<br>

Salazar, Jaquette, and Han (2022) categorizes College Board search filters into four buckets:

- Geographic
- Academic
- Demographic
- Student preferences

<br>
Drawing largely from the sociology of race, we develop expectations about which filters are associated with problematic exclusion

--- 

## Geographic filters

Geographic search filters enable universities to target prospects based on where they live

- e.g., state, zip code, CBSA, "geomarket," geodemographic market segment)

<br>

Critical geography and whiteness as property Harris (1993); Salazar (2022) 

- Residential segregation a function of historic and contemporary laws/policies/practicies
- Geographic filters are built on the back of racial segregation
- Targeting prospects based on location (space) without considering history of segregation (place) reinforces race-based inequality

<br>
Expected results

- Small geographic filters (e.g., zip code vs. metro) >> racial disparities because segregation granular
    - Targeting affluent communities >> racial exclusion because POC historically excluded
- Filters that create new borders based on historic education data >> racial disparities because borders reflect historic disparities in educational opportunities
    - "Geographic education market" filters: geomarket, geodemographic segment
    - These filters increases the effects of historic place-based inequality
        - Discriminate between prospects based on previously unknown geographic borders

--- .section

# Methods

--- .subsection

# Data collection

---

## Data collection overview

Data collection

- Issued public records requests to all public universities in four states (CA, IL, MN, TX)
- Target student list vendors: College Board, ACT
- Data collection began February 2020, sought purchases from 2016-2020

<br>

For each purchased list, sought two pieces of data

1. "Order summary" specifying search filter criteria ([LINK](https://drive.google.com/file/d/1gPZ-WWw0gdFT7VtzBN3hKLnj2DzoaqnY/view))
1. De-identified prospect-level student list ([LINK](https://drive.google.com/file/d/1Qvc_QRi9izEF1W78Lh4nNi5NsXjCZqUE/view))

<br>

Empirical research questions

1. Which filter criteria were selected in student lists purchases?
1. What are the characteristics of prospects included in student lists purchases?
1. **What is the relationship between student list filter criteria and the characteristics of
purchased prospects?**


---

## Summary of data received

<!-- html table generated in R 3.6.3 by xtable 1.8-4 package -->
<!-- Fri Mar 10 12:23:26 2023 -->
<table border=1>
  <tr style="text-align:center;"><th>State</th><th># received order summary</th><th># no order summary</th><th># received list</th><th># no list</th><th># received both</th><th># did not receive both</th></tr> <tr> <td align="center"> CA </td> <td align="center">   9 </td> <td align="center">  23 </td> <td align="center">  13 </td> <td align="center">  19 </td> <td align="center">   9 </td> <td align="center">  23 </td> </tr>
  <tr> <td align="center"> IL </td> <td align="center">   9 </td> <td align="center">   3 </td> <td align="center">   9 </td> <td align="center">   3 </td> <td align="center">   8 </td> <td align="center">   4 </td> </tr>
  <tr> <td align="center"> TX </td> <td align="center">  15 </td> <td align="center">  20 </td> <td align="center">  16 </td> <td align="center">  19 </td> <td align="center">  10 </td> <td align="center">  25 </td> </tr>
   </table>



---

## Orders and prospects purchased

<img src="assets/fig/orders-prospects-purchased-1.png" title="plot of chunk orders-prospects-purchased" alt="plot of chunk orders-prospects-purchased" width="90%" />

--- .subsection

# Research design

--- 

## Summary of orders and prospects

<!-- html table generated in R 3.6.3 by xtable 1.8-4 package -->
<!-- Fri Mar 10 12:23:27 2023 -->
<table border=1>
  <tr style="text-align:center;"><th style="border-bottom:none;">RQ1</th><th style="border-bottom:none;">RQ3</th><th style="border-bottom:none;">RQ2</th><th style="border-bottom:none;">RQ3</th></tr><tr style="text-align:center;"><th># orders total</th><th># orders with list</th><th># prospects total</th><th># prospects with order</th></tr> <tr> <td align="center"> 830 </td> <td align="center"> 414 </td> <td align="center"> 3,663,257 </td> <td align="center"> 2,549,085 </td> </tr>
   </table>

<br>

Empirical research questions

1. Which filter criteria were selected in student lists purchases?
  - Unit of analysis = order; 830 orders (by 14 universities)
1. What are the characteristics of prospects included in student lists purchases?
  - unit of analysis = university-prospect; 3,663,257 prospects (by 14 universities)
1. **What is relationship between filter criteria and characteristics of purchased prospects?**
  - Unit of analysis = order-prospect; 414 orders associated with 2,548,085 prospects

<br>
Case study research design because non-random sample

- RQ1 and RQ2
  - Internal validity: are orders/prospects representative of behavior of 14 universities in sample?
  - External validity: cannot make inferences about population of public univs
- RQ3
  - Ixternal validity: set of search criteria yield same prospects regardless of which univ purchases
  - Analyses focus on "deep dives" of conceptually important order combinations


--- .section

# Results


--- .subsection

# RQ1


--- .subsubsection

# Broad patterns
## Filters used in order purchases

<img src="assets/fig/orders-filters-1.png" title="plot of chunk orders-filters" alt="plot of chunk orders-filters" width="90%" />


--- .subsubsection

# Academic filters
## GPA filter used

<img src="assets/fig/orders-gpa-1.png" title="plot of chunk orders-gpa" alt="plot of chunk orders-gpa" width="90%" />


---

## SAT filter used


<img src="assets/fig/orders-sat-1.png" title="plot of chunk orders-sat" alt="plot of chunk orders-sat" width="90%" />


---

## PSAT filter used

<img src="assets/fig/orders-psat-1.png" title="plot of chunk orders-psat" alt="plot of chunk orders-psat" width="90%" />



--- .subsubsection

#  Geographic filters
## State filter used by research universities, out-of-state

<img src="assets/fig/orders-state-research-outofstate-1.png" title="plot of chunk orders-state-research-outofstate" alt="plot of chunk orders-state-research-outofstate" width="90%" />

---

## State filter used by research universities, in-state

<img src="assets/fig/orders-state-research-instate-1.png" title="plot of chunk orders-state-research-instate" alt="plot of chunk orders-state-research-instate" width="90%" />


--- .subsubsection

# Demographic filters
## Race filter

<img src="assets/fig/orders-race-1.png" title="plot of chunk orders-race" alt="plot of chunk orders-race" width="90%" />


--- .subsubsection

# Combination of filters
## Filter combos used in order purchases

<!-- html table generated in R 3.6.3 by xtable 1.8-4 package -->
<!-- Fri Mar 10 12:23:31 2023 -->
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

# RQ2


---

# Characteristics of Prospects
## Number of prospects by university type and location

<img src="assets/fig/rq2-counts-1.png" title="plot of chunk rq2-counts" alt="plot of chunk rq2-counts" width="90%" />



--- .subsubsection

# Public research universities 
## Racial composition of prospects in lists purchased

<img src="assets/fig/rq2-race-research-1.png" title="plot of chunk rq2-race-research" alt="plot of chunk rq2-race-research" width="90%" />


---

## Median household income of prospects in lists purchased

<img src="assets/fig/rq2-income-research-1.png" title="plot of chunk rq2-income-research" alt="plot of chunk rq2-income-research" width="90%" />


---

## Locale of prospects in lists purchased

<img src="assets/fig/rq2-locale-research-1.png" title="plot of chunk rq2-locale-research" alt="plot of chunk rq2-locale-research" width="90%" />


--- .subsubsection

# Public ma/doctoral universities
## Racial composition of prospects in lists purchased

<img src="assets/fig/rq2-race-regional-1.png" title="plot of chunk rq2-race-regional" alt="plot of chunk rq2-race-regional" width="90%" />


---

## Median household income of prospects purchased

<img src="assets/fig/rq2-income-regional-1.png" title="plot of chunk rq2-income-regional" alt="plot of chunk rq2-income-regional" width="90%" />


---

## Locale of prospects in lists purchased

<img src="assets/fig/rq2-locale-regional-1.png" title="plot of chunk rq2-locale-regional" alt="plot of chunk rq2-locale-regional" width="90%" />


--- .subsection

# RQ3


--- .subsubsection

# Characteristics by filters
## Prospect characteristics across individual filter criteria

<!-- html table generated in R 3.6.3 by xtable 1.8-4 package -->
<!-- Fri Mar 10 12:23:35 2023 -->
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

# Zip code & test score filters
## Los Angeles prospects from top income decile zip codes

<img src="assets/fig/asu-la-deep-dive-1.png" title="plot of chunk asu-la-deep-dive" alt="plot of chunk asu-la-deep-dive" width="90%" />



--- .subsubsection

# Geodemographic segment filters
## Filter by neighborhood segments

<!-- html table generated in R 3.6.3 by xtable 1.8-4 package -->
<!-- Fri Mar 10 12:23:36 2023 -->
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

<!-- html table generated in R 3.6.3 by xtable 1.8-4 package -->
<!-- Fri Mar 10 12:23:36 2023 -->
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

<img src="assets/fig/uiuc-deep-dive-1.png" title="plot of chunk uiuc-deep-dive" alt="plot of chunk uiuc-deep-dive" width="90%" />


---

## Segment filter prospects interactive map

<iframe src="https://mpatricia01.github.io/public_requests_eda/outputs/maps/map_segment_green.html" id="uiuc-deep-dive-map" width=100% height=100% allowtransparency="true"></iframe>


--- .subsubsection

# Women in STEM
## Women in STEM prospects by metro

<img src="assets/fig/ucsd-deep-dive-1.png" title="plot of chunk ucsd-deep-dive" alt="plot of chunk ucsd-deep-dive" width="90%" />


--- .subsubsection

# Targeting URM students
## Race and ethnicity variables, aggregated vs. alone

<img src="assets/fig/poc-race-deep-dive-1.png" title="plot of chunk poc-race-deep-dive" alt="plot of chunk poc-race-deep-dive" width="90%" />


---

## Purchased profiles for students of color by metro

<img src="assets/fig/poc-prospects-deep-dive-1.png" title="plot of chunk poc-prospects-deep-dive" alt="plot of chunk poc-prospects-deep-dive" width="90%" />



---

## Purchased profiles for students of color interactive map

<iframe src="https://mpatricia01.github.io/public_requests_eda/outputs/maps/map_poc_green.html" id="poc-prospects-deep-dive-map" width=100% height=100% allowtransparency="true"></iframe>





--- .section

# Discussion

--- 

## Data as capital, obfuscation, and policy research

Student list data derived from user-data of students laboring on platforms

- Marx (1978): formula for economic capital is $M - C - M'$
    - money ($M$); commodities ($C$)
- Data as capital (Sadowski, 2019)
    - Data an input into production commodities (e.g., software predicting hospital staff needs)
    - Data are a commodity extracted from labor of people using digital platforms
- College Board follows $M - C - M'-C-M''$: Invest money ($M$) to develop tests ($C$); sold to households ($M'$) yielding student list data ($C$); sold to universities ($M''$)
- Emerging trend: wrap student list data within a software-as-service recruiting product


<br>
Obfuscation (Cottom, 2020; Pasquale, 2015)

- Opacity of digital platforms is deliberate strategy to manage regulatory environments
- **Really** hard to collect data about student list products or "student success" products

<br>
Policy

- Policy should regulate products sold to schools, universities, and students
- Developing regulations requires on a body of research
- Education researchers must interrogate third-party products and vendors
    - Focus on structural inequality embedded in product design

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
URL: <a href="%3CGo to ISI%3E://WOS:A1997XG45300007">&lt;Go to ISI&gt;://WOS:A1997XG45300007</a>.</cite></p>

<p><a id='bib-RN4794'></a><a href="#cite-RN4794">[3]</a><cite>
J. Burrell and M. Fourcade.
&ldquo;The society of algorithms&rdquo;.
In: <em>Annual Review of Sociology</em> 47 (2021), pp. 213-237.
ISSN: 978-0-8243-2247-2.
DOI: <a href="https://doi.org/10.1146/annurev-soc-090820-020800">10.1146/annurev-soc-090820-020800</a>.
URL: <a href="%3CGo to ISI%3E://WOS:000684003600012">&lt;Go to ISI&gt;://WOS:000684003600012</a>.</cite></p>

<p><a id='bib-RN4795'></a><a href="#cite-RN4795">[4]</a><cite>
K. Cotter, M. Medeiros, C. Pak, et al.
&ldquo;&quot;Reach the right people&quot;: The politics of &quot;interests&quot; in Facebook's classification system for ad targeting&rdquo;.
In: <em>Big Data &amp; Society</em> 8.1 (2021), p. 16.
ISSN: 2053-9517.
DOI: <a href="https://doi.org/10.1177/2053951721996046">10.1177/2053951721996046</a>.
URL: <a href="%3CGo to ISI%3E://WOS:000629354000001">&lt;Go to ISI&gt;://WOS:000629354000001</a>.</cite></p>

<p><a id='bib-cottom2017lower'></a><a href="#cite-cottom2017lower">[5]</a><cite>
T. M. Cottom.
<em>Lower ed: The troubling rise of for-profit colleges in the new economy</em>.
New Press, The, 2017.</cite></p>

<p><a id='bib-RN4774'></a><a href="#cite-RN4774">[6]</a><cite>
T. M. Cottom.
&ldquo;Where platform capitalism and racial capitalism meet: The sociology of race and racism in the digital society&rdquo;.
In: <em>Sociology of Race and Ethnicity</em> 6.4 (2020), pp. 441-449.
ISSN: 2332-6492.
DOI: <a href="https://doi.org/10.1177/2332649220949473">10.1177/2332649220949473</a>.
URL: <a href="https://doi.org/10.1177/2332649220949473">https://doi.org/10.1177/2332649220949473</a>.</cite></p>

<p><a id='bib-RN4782'></a><a href="#cite-RN4782">[7]</a><cite>
W. E. B. Du Bois.
<em>Black reconstruction: An essay toward a history of the part which black folk played in the attempt to reconstruct democracy in America, 1860-1880</em>.
1st.
New York: Russel &amp; Russel, 1935, p. 746.</cite></p>

<p><a id='bib-RN4810'></a><a href="#cite-RN4810">[8]</a><cite>
M. Fourcade and K. Healy.
&ldquo;Classification situations: Life-chances in the neoliberal era&rdquo;.
In: <em>Accounting Organizations and Society</em> 38.8 (2013), pp. 559-572.
ISSN: 0361-3682.
DOI: <a href="https://doi.org/10.1016/j.aos.2013.11.002">10.1016/j.aos.2013.11.002</a>.
URL: <a href="%3CGo to ISI%3E://WOS:000329013300001">&lt;Go to ISI&gt;://WOS:000329013300001</a>.</cite></p>

<p><a id='bib-RN4551'></a><a href="#cite-RN4551">[9]</a><cite>
C. I. Harris.
&ldquo;Whiteness as Property&rdquo;.
In: <em>Harvard Law Review</em> 106.8 (1993), pp. 1707-1791.
ISSN: 0017811X.
DOI: <a href="https://doi.org/10.2307/1341787">10.2307/1341787</a>.
URL: <a href="www.jstor.org/stable/1341787">www.jstor.org/stable/1341787</a>.</cite></p>

<p><a id='bib-RN4778'></a><a href="#cite-RN4778">[10]</a><cite>
D. Hirschman and E. A. Bosk.
&ldquo;Standardizing biases: Selection devices and the quantification of race&rdquo;.
In: <em>Sociology of Race and Ethnicity</em> 6.3 (2020), pp. 348-364.
DOI: <a href="https://doi.org/10.1177/2332649219844797">10.1177/2332649219844797</a>.
URL: <a href="https://journals.sagepub.com/doi/abs/10.1177/2332649219844797">https://journals.sagepub.com/doi/abs/10.1177/2332649219844797</a>.</cite></p>

<p><a id='bib-RN4324'></a><a href="#cite-RN4324">[11]</a><cite>
M. M. Holland.
<em>Divergent paths to college: Race, class, and inequality in high schools</em>.
Rutgers University Press, 2019.
DOI: <a href="https://doi.org/10.36019/9780813590288">10.36019/9780813590288</a>.</cite></p>

<p><a id='bib-RN4739'></a><a href="#cite-RN4739">[12]</a><cite>
J. Howell, M. H. Hurwitz, Z. Mabel, et al.
<em>Participation in student search service is associated with higher college enrollment and completion</em>.
Tech. rep.
College Board, 2021.
URL: <a href="https://cbsearch.collegeboard.org/pdf/college-outreach-and-student-outcomes.pdf">https://cbsearch.collegeboard.org/pdf/college-outreach-and-student-outcomes.pdf</a>.</cite></p>

<p><a id='bib-list_biz'></a><a href="#cite-list_biz">[13]</a><cite>
O. Jaquette, K. Salazar, and P. Martin.
<em>The student list business: Primer and market dynamics</em>.
Tech. rep.
washington, DC: TICAS, 2022.
URL: <a href="https://ticas.org/wp-content/uploads/2022/09/The-Student-List-Business_-Primer-and-Market-Dynamics.pdf">https://ticas.org/wp-content/uploads/2022/09/The-Student-List-Business_-Primer-and-Market-Dynamics.pdf</a>.</cite></p>

<p><a id='bib-RN4407'></a><a href="#cite-RN4407">[14]</a><cite>
S. R. Khan.
<em>Privilege: The making of an adolescent elite at St. Paul's School</em>.
Princeton studies in cultural sociology.
Princeton, N.J.: Princeton University Press, 2011, p. 232.
ISBN: 9780691145280 (alk. paper)
0691145288 (alk. paper)
9780691156231 (pbk.)
0691156239 (pbk.).</cite></p>

<p><a id='bib-RN4815'></a><a href="#cite-RN4815">[15]</a><cite>
J. Komljenovic.
&ldquo;The future of value in digitalised higher education: why data privacy should not be our biggest concern&rdquo;.
In: <em>Higher Education</em> 83.1 (2022), pp. 119-135.
ISSN: 1573-174X.
DOI: <a href="https://doi.org/10.1007/s10734-020-00639-7">10.1007/s10734-020-00639-7</a>.
URL: <a href="https://doi.org/10.1007/s10734-020-00639-7">https://doi.org/10.1007/s10734-020-00639-7</a>.</cite></p>

<p><a id='bib-RN4793'></a><a href="#cite-RN4793">[16]</a><cite>
J. Komljenovic.
&ldquo;The rise of education rentiers: digital platforms, digital data and rents&rdquo;.
In: <em>Learning Media and Technology</em> 46.3 (2021), pp. 320-332.
ISSN: 1743-9884.
DOI: <a href="https://doi.org/10.1080/17439884.2021.1891422">10.1080/17439884.2021.1891422</a>.
URL: <a href="%3CGo to ISI%3E://WOS:000620464000001">&lt;Go to ISI&gt;://WOS:000620464000001</a>.</cite></p>

<p><a id='bib-RN1025'></a><a href="#cite-RN1025">[17]</a><cite>
K. Marx.
&ldquo;Capital&rdquo;.
In: 
<em>The Marx-Engels Reader</em>.
Ed. by R. C. Tucker.
second.
New York: W.W. Norton and Company, 1978.</cite></p>

<p><a id='bib-RN4772'></a><a href="#cite-RN4772">[18]</a><cite>
S. U. Noble.
<em>Algorithms of oppression: how search engines reinforce racism</em>.
New York: New York University Press, 2018.
ISBN: 9781479849949 (cl alk. paper)
9781479837243 (pb alk. paper).</cite></p>

<p><a id='bib-RN4786'></a><a href="#cite-RN4786">[19]</a><cite>
D. Norris.
&ldquo;Embedding racism: City government credit ratings and the institutionalization of race in markets&rdquo;.
In: <em>Social Problems</em> (2021).
ISSN: 0037-7791.
DOI: <a href="https://doi.org/10.1093/socpro/spab066">10.1093/socpro/spab066</a>.
URL: <a href="https://doi.org/10.1093/socpro/spab066">https://doi.org/10.1093/socpro/spab066</a>.</cite></p>

<p><a id='bib-doi1011'></a><a href="#cite-doi1011">[20]</a><cite>
Z. Obermeyer, B. Powers, C. Vogeli, et al.
&ldquo;Dissecting racial bias in an algorithm used to manage the health of populations&rdquo;.
In: <em>Science</em> 366.6464 (2019), pp. 447-453.
DOI: <a href="https://doi.org/10.1126/science.aax2342">10.1126/science.aax2342</a>.
eprint: https://www.science.org/doi/pdf/10.1126/science.aax2342.
URL: <a href="https://www.science.org/doi/abs/10.1126/science.aax2342">https://www.science.org/doi/abs/10.1126/science.aax2342</a>.</cite></p>

<p><a id='bib-RN4842'></a><a href="#cite-RN4842">[21]</a><cite>
F. Pasquale.
<em>The black box society: the secret algorithms that control money and information</em>.
Cambridge: Harvard University Press, 2015, p. 311.
ISBN: 9780674368279.</cite></p>

<p><a id='bib-RN4520'></a><a href="#cite-RN4520">[22]</a><cite>
A. Posecznick.
<em>Selling hope and college merit, markets, and recruitment in an unranked school</em>.
Ithaca ; London: Cornell University Press, 2017.
ISBN: 9781501707582
9781501709821.
URL: <a href="https://muse.jhu.edu/book/52616">https://muse.jhu.edu/book/52616</a>.</cite></p>

<p><a id='bib-RN4773'></a><a href="#cite-RN4773">[23]</a><cite>
C. J. Robinson.
<em>Black marxism: The making of the Black radical tradition</em>.
Chapel Hill, N.C.: University of North Carolina Press, 2000, p. xxxiii, 436.
ISBN: 0807848298 (pbk. alk. paper).
URL: <a href="Table of Contents http://lcweb.loc.gov/catdir/toc/99030995.html">Table of Contents http://lcweb.loc.gov/catdir/toc/99030995.html</a>.</cite></p>

<p><a id='bib-ruffalo_noel_levitz_2021'></a><a href="#cite-ruffalo_noel_levitz_2021">[24]</a><cite>
Ruffalo Noel Levitz.
<em>RNL Student Search and Engagement</em>.
Jul. 2021.
URL: <a href="https://www.ruffalonl.com/enrollment-management-solutions/building-demand/student-search-and-engagement/">https://www.ruffalonl.com/enrollment-management-solutions/building-demand/student-search-and-engagement/</a>.</cite></p>

<p><a id='bib-RN4799'></a><a href="#cite-RN4799">[25]</a><cite>
J. Sadowski.
&ldquo;When data is capital: Datafication, accumulation, and extraction&rdquo;.
In: <em>Big Data &amp; Society</em> 6.1 (2019), p. 12.
ISSN: 2053-9517.
DOI: <a href="https://doi.org/10.1177/2053951718820549">10.1177/2053951718820549</a>.
URL: <a href="%3CGo to ISI%3E://WOS:000455488000001">&lt;Go to ISI&gt;://WOS:000455488000001</a>.</cite></p>

<p><a id='bib-RN4759'></a><a href="#cite-RN4759">[26]</a><cite>
K. G. Salazar.
&ldquo;Recruitment Redlining by Public Research Universities in the Los Angeles and Dallas Metropolitan Areas&rdquo;.
In: <em>The Journal of Higher Education</em> (2022), pp. 1&ndash;37.
DOI: <a href="https://doi.org/10.1080/00221546.2021.2004811">10.1080/00221546.2021.2004811</a>.
URL: <a href="https://doi.org/10.1080/00221546.2021.2004811">https://doi.org/10.1080/00221546.2021.2004811</a>.</cite></p>

<p><a id='bib-RN4758'></a><a href="#cite-RN4758">[27]</a><cite>
K. G. Salazar, O. Jaquette, and C. Han.
&ldquo;Coming Soon to a Neighborhood Near You? Off-Campus Recruiting by Public Research Universities&rdquo;.
In: <em>American Educational Research Journal</em> 58.6 (2021), pp. 1270-1314.
DOI: <a href="https://doi.org/10.3102/00028312211001810">10.3102/00028312211001810</a>.
URL: <a href="https://journals.sagepub.com/doi/abs/10.3102/00028312211001810">https://journals.sagepub.com/doi/abs/10.3102/00028312211001810</a>.</cite></p>

<p><a id='bib-list_empirics'></a><a href="#cite-list_empirics">[28]</a><cite>
K. Salazar, O. Jaquette, and C. Han.
<em>Geodemographics of student list purchases: a first look</em>.
Tech. rep.
Washington, DC: TICAS, 2022.
URL: <a href="https://ticas.org/wp-content/uploads/2022/09/Geodemographics-of-Student-List-Purchases_A-First-Look.pdf">https://ticas.org/wp-content/uploads/2022/09/Geodemographics-of-Student-List-Purchases_A-First-Look.pdf</a>.</cite></p>

<p><a id='bib-RN4841'></a><a href="#cite-RN4841">[29]</a><cite>
L. Seamster and R. Charron-Chénier.
&ldquo;Predatory inclusion and education debt: Rethinking the racial wealth gap&rdquo;.
In: <em>Social Currents</em> 4.3 (2017), pp. 199-207.
DOI: <a href="https://doi.org/10.1177/2329496516686620">10.1177/2329496516686620</a>.
URL: <a href="https://journals.sagepub.com/doi/abs/10.1177/2329496516686620">https://journals.sagepub.com/doi/abs/10.1177/2329496516686620</a>.</cite></p>

<p><a id='bib-RN4835'></a><a href="#cite-RN4835">[30]</a><cite>
J. Simon.
&ldquo;The ideological effects of actuarial practices&rdquo;.
In: <em>Law &amp; Society Review</em> 22.4 (1988), pp. 771-800.
ISSN: 0023-9216.
DOI: <a href="https://doi.org/10.2307/3053709">10.2307/3053709</a>.
URL: <a href="%3CGo to ISI%3E://WOS:A1988R764700008">&lt;Go to ISI&gt;://WOS:A1988R764700008</a>.</cite></p>

<p><a id='bib-RN3519'></a><a href="#cite-RN3519">[31]</a><cite>
M. L. Stevens.
<em>Creating a class: College admissions and the education of elites</em>.
Cambridge, MA: Harvard University Press, 2007, p. 308.
ISBN: 9780674026735 (alk. paper) 067402673X (alk. paper).</cite></p>

<p><a id='bib-RN4760'></a><a href="#cite-RN4760">[32]</a><cite>
M. J. N. Tiako, E. South, and V. Ray.
&ldquo;Medical Schools as Racialized Organizations: A Primer&rdquo;.
In: <em>Annals of Internal Medicine</em> 174.8 (2021), pp. 1143-1144.
DOI: <a href="https://doi.org/10.7326/m21-0369 %25m 34058105%7D%7B10.7326/m21-0369 %25m 34058105%7D."></a></cite></p>
</div>
