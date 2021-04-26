# Pewlett-Hackard-Analysisy

## Overview 
This analysis was performed to identify employees at Pewlett Hackard that are eligible for 1) retirement in the near future and 2) company mentorship program. 
## Results: 
Below are four results gained from this analysis: 
- Many employees have enjoyed a longstanding career within the company. After filtering to employees born from 1952-1955, it can be seen that many have duplicate title records from occupying various roles either by promotion or making career changes. 
![ret_titles.png](Data/ret_titles.png)
- Since the client is interested in knowing what current roles they are likely to need to refill in the near future, we can filter to the most recent title for each of these employees if we order the employee records by their "To Date" in descending order and then use the "Distinct On" function to pull only one record. nu
![unique_titles.png](Data/unique_titles.png)
- Then the aggregate numbers for each role were calculated for employees becoming eligible for retirement, with Senior Engineer and Senior Staff respectively making the most impacted roles. 
![title_sums.png](Data/title_sums.png)
- When looking at current employees that were born in 1965, we see that there are about 1500 employees that are currently eligible for the mentorship program. See examples below: 
![mentorship.png](Data/mentorship.png)
## Summary
Provide high-level responses to the following questions, then provide two additional queries or tables that may provide more insight into the upcoming "silver tsunami."
How many roles will need to be filled as the "silver tsunami" begins to make an impact?
Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
