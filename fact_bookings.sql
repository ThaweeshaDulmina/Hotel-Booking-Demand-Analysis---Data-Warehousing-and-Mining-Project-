SELECT
  GENERATE_UUID() AS booking_id,
  h.hotel_id AS hotel_key,
  c.customer_id AS customer_key,
  d.date_id AS date_key,
  f.is_canceled,
  f.lead_time,
  f.total_guests,
  f.stays_total_nights,
  f.adr

FROM `golden-frame-459107-h3.data.cleaned_data` f

LEFT JOIN `golden-frame-459107-h3.data.dim_hotel` h
  ON f.hotel = h.hotel_name

LEFT JOIN `golden-frame-459107-h3.data.dim_customer` c
  ON f.country = c.country AND f.market_segment = c.market_segment

LEFT JOIN `golden-frame-459107-h3.data.dim_date` d
  ON FORMAT_DATE('%Y%m%d', f.reservation_status_date) = d.date_id

--limits output to 1000 rows for fast preview
LIMIT 1000;
