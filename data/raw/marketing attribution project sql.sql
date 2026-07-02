SELECT * FROM marketing_db.marketing_campaign_dataset;
SELECT COUNT(*) AS total_records FROM marketing_campaign_dataset;

SELECT Channel_Used,
COUNT(*) AS total_campaigns FROM marketing_campaign_dataset GROUP BY Channel_Used ORDER BY total_campaigns DESC;

SELECT Channel_Used,ROUND(AVG(ROI),2) AS avg_roi FROM marketing_campaign_dataset GROUP BY Channel_Used ORDER BY avg_roi DESC;

SELECT Channel_Used,
ROUND(AVG(Conversion_Rate),4) AS avg_conversion
FROM marketing_campaign_dataset
GROUP BY Channel_Used
ORDER BY avg_conversion DESC;


SELECT Campaign_ID, Channel_Used,ROI,
ROW_NUMBER() OVER(PARTITION BY Channel_Used
ORDER BY ROI DESC
) AS channel_rank
FROM marketing_campaign_dataset;

CREATE TABLE user_journey (
    user_id INT,
    channel VARCHAR(50),
    touch_order INT
);

INSERT INTO user_journey VALUES
(1,'Facebook',1),
(1,'Google Ads',2),
(1,'Website',3),
(2,'Instagram',1),
(2,'Website',2);

SELECT
user_id,
channel,
CASE
WHEN touch_order = 1 THEN 1
ELSE 0
END AS first_click_weight
FROM user_journey;

SELECT
user_id,
channel,
1.0 / COUNT(*) OVER(PARTITION BY user_id)
AS linear_weight
FROM user_journey;

USE marketing_db;

-- Total spend-- 
SELECT
SUM(
CAST(
REPLACE(
REPLACE(Acquisition_Cost,'$',''),
',',''
) AS DECIMAL(15,2)
)
) AS Total_Spend
FROM marketing_campaign_dataset;

-- Cost Per Click(CPC) 
SELECT ROUND(
SUM(
CAST(
REPLACE(REPLACE(Acquisition_Cost,'$',''),',','')
AS DECIMAL(15,2)
)
)
/ SUM(Clicks),
2
) AS CPC
FROM marketing_campaign_dataset;

-- CAC
SELECT ROUND(
SUM(
CAST(
REPLACE(REPLACE(Acquisition_Cost,'$',''),',','')
AS DECIMAL(15,2)
)
)
/COUNT(*),
2
) AS CAC
FROM marketing_campaign_dataset;


-- ROAS(Return On Ad Spend) 
SELECT ROUND(
SUM(
CAST(
REPLACE(REPLACE(Acquisition_Cost,'$',''),',','')
AS DECIMAL(15,2)
) * ROI
)
/
SUM(
CAST(
REPLACE(REPLACE(Acquisition_Cost,'$',''),',','')
AS DECIMAL(15,2)
)
),
2
) AS ROAS
FROM marketing_campaign_dataset;

describe marketing_campaign_dataset;