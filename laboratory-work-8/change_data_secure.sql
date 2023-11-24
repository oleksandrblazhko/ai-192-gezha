CREATE OR REPLACE FUNCTION change_data_secure(new_age INTEGER, name_of_person VARCHAR)
RETURNS void
AS $$

DECLARE
	str VARCHAR;
BEGIN
	str := 'UPDATE persons SET age = $1 WHERE person_name = $2';
	RAISE NOTICE 'Query=%', str;
	EXECUTE str using new_age, name_of_person;
END;

$$ LANGUAGE plpgsql;