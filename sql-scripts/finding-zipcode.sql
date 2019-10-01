-- Get City and state when zipcode is given
SELECT 
    zc.zipcode, 
    zc.city, 
    st.state_name 
FROM
    zipcodes zc
    JOIN 
    states st
    ON zc.state_id = st.id
WHERE 
    zc.zipcode = '46143';

--  Get zipcode when state and city is given
SELECT
    zc.zipcode,
    zc.city,
    st.state_name
FROM
    zipcodes zc
    JOIN
    states st
    ON zc.state_id = st.id
WHERE
    st.state_id = 'MI'
    AND
    zc.city = 'Canton';