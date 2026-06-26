# Data Modeling

Data modeling is the process of organizing data into tables and defining relationships between them.

For this project, a Star Schema was used to structure the marketing campaign data for reporting and dashboard creation.

## Fact Table

### Fact_Campaign

The Fact_Campaign table stores measurable campaign data.

Columns include:

- Campaign_ID
- Date
- Clicks
- Impressions
- Acquisition_Cost
- ROI

This table is used to calculate business metrics and KPIs.

## Dimension Tables

### Dim_Channel

Stores information about marketing channels.

Examples:

- Facebook
- Email
- Google Ads
- Instagram
- YouTube

### Dim_Campaign

Stores campaign-related information.

Columns:

- Campaign_Type
- Target_Audience

### Dim_Date

Stores date information.

Columns:

- Date
- Month
- Year

This helps in monthly and yearly analysis.

### Dim_Location

Stores location-related information.

Columns:

- Location
- Language

This helps analyze campaign performance across different regions.

## Benefits of Data Modeling

- Organizes data efficiently
- Reduces data redundancy
- Improves query performance
- Supports Power BI reporting
- Makes dashboard creation easier

## Conclusion

The marketing dataset was modeled using a Star Schema consisting of one Fact table and four Dimension tables. This structure is suitable for Business Intelligence and reporting purposes.