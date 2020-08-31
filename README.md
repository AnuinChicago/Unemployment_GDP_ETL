[Project Report](https://docs.google.com/document/d/10paAE3xX_7CimcTwOF3twK5LvelXhFmDSesd-P8gdZc/edit?ts=5ed2ad3f "Project Report")

## Data Cleanup & Analysis
### The sources of data :
 We used two data sources. Both were CSV files.
1.     US Unemployment : Each years monthly unemployment rate from 1948 to 2019
Link: https://www.kaggle.com/tunguz/us-monthly-unemployment-rate-1948-present

2.     US GDP: Yearly US GDP from 1930 to 2015
Link: https://datahub.io/core/gdp-us


The type of transformation:
Cleaning and Filtering
The type of final production database:
        	We used a relational database, Postgres, to load our final production data.
The final tables or collections used:
![unemp](unemployment.png)
![gdp](GDP.png)

## Extract:
### Sources:

1.US Unemploymen: https://www.kaggle.com/tunguz/us-monthly-unemployment-rate-1948-present
2.US GDP: https://datahub.io/core/gdp-us

## Transform:
1.     Filtering:
 a.     GDP
 Process:  
·       We filtered out the years before 1948.
·       We also filtered out 2 columns: ‘level-chained’ and ‘change-chained’ by creating a copy.
 
 b.     Unemployment
 Process:  
·       We filtered out the years after 2015
2.     Cleaning:
 a.     GDP
 Process:  
·       We renamed the column headers. We changed ‘date’ to ‘year’   to match Unemployment.
·       We changed ‘level-current’ to ‘level_current’ and ‘change-current’ to ‘change_current’, because ‘level-current’ was a keyword in Postgres.
·       We also dropped duplicate ‘year’, if any were present.
·       We set the index to ‘year’ column.
 b.     Unemployment
 Process:  
·       We renamed the column headers. We changed ‘Year’ to ‘year’ to match GDP.
·       We changed all months from 3-letter abbreviation to full undercase name to ensure proper Postgres formatting.
·       We also dropped duplicate ‘year’, if any were present.
·       We set the index to ‘year’ column.

