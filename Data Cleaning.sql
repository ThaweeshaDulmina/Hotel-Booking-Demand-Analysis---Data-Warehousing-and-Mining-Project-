CREATE OR REPLACE TABLE `golden-frame-459107-h3.data.cleaned_data` AS
SELECT
  hotel,
  is_canceled,
  lead_time,
  arrival_date_year,
  arrival_date_month,
  arrival_date_day_of_month,
  stays_in_weekend_nights,
  stays_in_week_nights,
  adults,
  IFNULL(children, 0) AS children,
  IFNULL(babies, 0) AS babies,
  meal,
  country,
  market_segment,
  distribution_channel,
  adr,

  -- Use the date directly
  reservation_status_date,

  -- Derived columns
  adults + IFNULL(children, 0) + IFNULL(babies, 0) AS total_guests,
  stays_in_week_nights + stays_in_weekend_nights AS stays_total_nights

FROM `golden-frame-459107-h3.data.rawdata`
WHERE
  hotel IS NOT NULL
  AND lead_time IS NOT NULL
  AND arrival_date_year IS NOT NULL
  AND arrival_date_month IS NOT NULL
  AND adr IS NOT NULL
  AND reservation_status_date IS NOT NULL;
