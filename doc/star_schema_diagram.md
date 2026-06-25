# Star Schema Diagram

A Star Schema was designed for the marketing campaign dataset.

The schema contains:

- Fact_Campaign
- Dim_Channel
- Dim_Campaign
- Dim_Date
- Dim_Location

The Fact table stores campaign metrics such as clicks, impressions, acquisition cost, and ROI.

The Dimension tables store descriptive information about channels, campaigns, locations, and dates.

This design improves reporting performance and prepares the data for Power BI dashboards.