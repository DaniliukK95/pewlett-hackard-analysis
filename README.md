# Pewlett-Hackard-Analysis
Module 7 – Challenge – Deliverable 3

## Overview of the Analysis

### Purpose
	In this analysis we are using SQL, Postgres and pgAdmin to help the company Pewlett Hackard prepare for its future with the coming wave of retiring employees. We first began with seeing which employees would be eligible for the retirement package and then helped them to figure out which positions would need to be filled with those employees that do retire. In final part of this analysis, we are helping the company solve the previous tasks with a mentorship program that can help to train the next generation of employees for positions. 
	

## Results

!(retiring_titles)[image]

- the table above was created in deliverable 1. it shows the total count per position title of employees that will be retiring. We can see there are 7 total titles and 72458 retiring employees. 

- In the same table we can see that Pewlett Hackard has mostly Senior Engineers and Senior Staff retiring. 

(methorship_elegibility)

- the table above was created in deliverable 2. This table was created to show potential employees who would be eligible for the mentorship program. 
- 
- At the bottom, we can see that there are a total of 1549 rows which means there are that many employees eligible for the mentorship program. 


## Summary

### How many roles will need to be filled as the “silver tsunami” begins to make an impact?
	According to the retiring_titles table, we can see that there are 7 positions with a little over 70,000 employees together for all the positions that will be retiring. So overall 70,000 roles will need to be filled. This is almost 1/4th of the work force since the total amount of employees still employed is close to 240,000.

(retiring_titles_3)

### Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees? 
	According to the deliverable 2 table, there are not enough retirement ready employees in the departments for mentoring. We can see there is a little over 1500 of these eligible employees to be mentored but as shown from the previous question, there are about 46x more employees that would need to be replaced. Now this can be debatable. If each mentor could take on 46 students at once or in a given period of time, then this could be possible. 

### additional tables to provide more insight to the upcoming “silver tsunami”
	I believe that this deliverable did not consider the hiring date of the employees. From my knowledge and with the tables we created before this challenge, we used the hire date from 1985 to 1988 as a filter for who could be eligible for retirement. I implemented this filter in the code for deliverable 1 and found that the number of eligible retiring employees per job title is significantly less. This shows that there might not be as many retiring employees coming in the near future which can lessen the pressure compared to the previous number. 
(retiring_titles_with_hire_date)

	Another query that I found from a classmate was the table below showing the number of retiring employees not only by title, but by their department so that there can be even more specifics to exactly what departments will need to be catered to. 
(elinas code)
![image](https://user-images.githubusercontent.com/108556672/190256314-dc1590b3-51e3-4502-a5eb-0cb32af792bb.png)
