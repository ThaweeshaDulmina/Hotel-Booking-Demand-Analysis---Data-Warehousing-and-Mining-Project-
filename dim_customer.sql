CREATE OR REPLACE TABLE `golden-frame-459107-h3.data.dim_customer` AS
SELECT DISTINCT
  GENERATE_UUID() AS customer_id,
  country,
  market_segment
FROM `golden-frame-459107-h3.data.cleaned_data`;
