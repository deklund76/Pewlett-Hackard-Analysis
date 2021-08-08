# Pewlett-Hackard-Analysis

## Overview
The following analysis inspects employee data for the company Pewlett-Hackard to gain insights to help prepare for the "silver tsunami", a wave of imminent retirements as baby boomers age out of the work force. By finding out who will be retiring in the new feature, what department they work in, what job title they hold, and how many of them there are, Pewlett-Hackard seeks to future-proof their company by preparing to hire more people for those positions in demand as well as determine how many employees may be kept on in part-time mentorship roles to ease the transition to a younger more evenly distributed workforce.

## Results
This analysis has yielded useful tables and csv files for assessing the companies future. 

### Figures
![impending_retirements_by_title](https://github.com/deklund76/Pewlett-Hackard-Analysis/blob/main/Resources/impending_retirements_by_title.png)

_figure 1_

![mentorship_eligibility](https://github.com/deklund76/Pewlett-Hackard-Analysis/blob/main/Resources/mentorship_eligibility.png)

_figure 2_

![retiring_employees_titles_held](https://github.com/deklund76/Pewlett-Hackard-Analysis/blob/main/Resources/retiring_employees_titles_held.png)

_figure 3_

### Major Findings

* Starting on the brightside, management will be basically untouched by the impending wave of retirements.
* The opposite is true for Senior positions however.
* As _figure 2_ shows, there are only 1,550 qualified mentors for the mentorship program, relatively few.
* _Figure 3_ shows some of the different titles some employees have had over the years. The upshot of the previous point is that as has been the case in the past, promotions of engineers and general staff will be needed to help fill the impending void among senior engineers and staff.

## Summary
In conclusion, we can make two additional queries to the PH-Employee database to provide insight on the impending "silver tsunami":

'''
SELECT SUM(retiring_titles.total)
FROM retiring_titles;
'''

The above query gives us a whopping total of 90,398 employees who will be retiring as part of the silver tsunami, more troubling is that when we run the next query:

'''
SELECT COUNT(*)
FROM mentorship_eligibility;
'''

There are only 1,550 retirement-ready employees qualified to mentor new hires in thier positions or roughly 1 mentor per 60 new employees, at that point they're more teachers than mentors.

As the results show, the mentorship program, while a nice idea, will not provide the necessary aid in preparing for the huge turnover Pewlett-Hackard will soon be facing. Pewlett-Hackard should expand the mentorship program to include younger veteran staff as well that can mentor new hires in lower positions as they transition to senior positions in the company. In addition, Pewlett-Hackard will also have to rely to some extant on finding experienced and qualified outside hires to fill the remaining positions. This analysis likely should have been conducted years ago, but better late than never.
