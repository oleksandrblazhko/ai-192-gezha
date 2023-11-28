CREATE OR REPLACE FUNCTION get_data_secure(requested_person_name VARCHAR)
RETURNS TABLE (p_id INTEGER, person_name VARCHAR, age INTEGER, spot_conf INTEGER)
AS $$

DECLARE
	str VARCHAR;
BEGIN
	str := 'SELECT * FROM persons WHERE person_name = $1';
	RAISE NOTICE 'Query=%', STR;
	RETURN query EXECUTE STR USING requested_person_name;
END;

$$ LANGUAGE plpgsql;
