

-- selects events that are today

SELECT * FROM venues WHERE DATE(event_date_test)=CURRENT_DATE