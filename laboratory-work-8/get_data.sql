CREATE OR REPLACE FUNCTION get_data(requested_person_name VARCHAR)
RETURNS TABLE (p_id INTEGER, person_name VARCHAR, age INTEGER, spot_conf INTEGER)
AS $$

DECLARE
	query VARCHAR;
BEGIN
	query := 'SELECT * FROM persons WHERE person_name = ''' || requested_person_name || '''';
	RAISE NOTICE 'Query=%', query;
	RETURN query EXECUTE query;
END;

$$ LANGUAGE plpgsql;
