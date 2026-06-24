# Star Schema

## What is Star Schema?

A Star Schema is a data modeling technique used in Business Intelligence and Data Warehousing. It organizes data into one Fact table and multiple Dimension tables. This structure improves query performance and makes dashboard creation easier.

## Fact Table

Fact_Campaign is the central table in the Star Schema.

It contains measurable data such as:
- Campaign_ID
- Date
- Clicks
- Impressions
- Acquisition_Cost
- ROI

These values are used to calculate KPIs and business metrics.

## Dimension Tables

### Dim_Channel
Stores marketing channel information.
Example: Facebook, Email, Google Ads, Instagram.

### Dim_Campaign
Stores campaign details.
Example: Campaign_Type and Target_Audience.

### Dim_Location
Stores location-related information.
Example: Location and Language.

### Dim_Date
Stores date information.
Example: Date, Month, and Year.

## Benefits of Star Schema

- Improves query performance.
- Reduces data redundancy.
- Makes dashboard development easier.
- Helps in KPI reporting and analysis.
- Suitable for Power BI and Tableau.