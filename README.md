# Pewlett-Hackard-Analysis
## Overview
This analysis was my first introduction to SQL through pgADMIN4.  We were tasked with helping a fictional company named Pewlett-Hackard answer questions about where their current employees are at in terms of retirement and mentorship.  We were given data files about departments, employees, salaries, and titles.  

## Results

### Retiring Employees 
We wrote a query that created a Retiring Titles table (made from employees born between 1/1/1952 and 12/31/1955). After removing duplicate entries, we joined tables in SQL to look at retiring employees by job title, as well as by department.  
     The total number of employees retiring is 72,458.  
     The vast majority of the retiring employees are Senior Engineers (25,916 retirees, 35.77%) and Senior Staff (24,926, 34.40%). 



## Mentorship Programs
We filtered the employee list again based on the proposed requirements that Pewlett-Hackard put forth for their mentorship program.  We were asked to focus on folks retiring in the next 5-10 years.  

There are 1549 available mentors.  Luckily for the company the majority of them are also Senior Staff (569, 36.73%), and Senior Engineers (529, 34.15%).  However, they are still in a bad position overall.  A Senior Engineer mentor, for example, would need to mentor 17 different employees to replace the number of folks retiring from those positions.  