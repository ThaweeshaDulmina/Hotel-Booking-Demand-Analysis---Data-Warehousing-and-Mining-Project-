CREATE OR REPLACE TABLE `golden-frame-459107-h3.data.dim_date` AS
SELECT DISTINCT
  FORMAT_DATE('%Y%m%d', reservation_status_date) AS date_id,
  reservation_status_date,
  arrival_date_day_of_month AS day,
  arrival_date_month AS month,
  arrival_date_year AS year
FROM `golden-frame-459107-h3.data.cleaned_data`;
