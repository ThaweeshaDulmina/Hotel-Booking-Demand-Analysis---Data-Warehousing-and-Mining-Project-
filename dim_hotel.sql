CREATE OR REPLACE TABLE `golden-frame-459107-h3.data.dim_hotel` AS
SELECT DISTINCT
  GENERATE_UUID() AS hotel_id,
  hotel AS hotel_name
FROM `golden-frame-459107-h3.data.cleaned_data`;
