CREATE OR REPLACE FUNCTION change_data(new_age INTEGER, name_of_person VARCHAR)
RETURNS void
AS $$

DECLARE
	query VARCHAR;
BEGIN
	query := 'UPDATE persons SET age = ' || new_age || ' WHERE person_name = ''' || name_of_person || '''';
	RAISE NOTICE 'Query=%', query;
	EXECUTE query;
END;

$$ LANGUAGE plpgsql;