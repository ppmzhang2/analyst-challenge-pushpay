CREATE OR REPLACE FUNCTION import_csv(csv_file text, table_name text)
returns void language plpgsql as $$
begin
    CREATE TEMP TABLE import (line text) on commit drop;
    EXECUTE format('copy import from %L', csv_file);

    EXECUTE format('create table %I (%s);', 
        table_name, concat(replace(line, ',', ' text, '), ' text'))
    from import limit 1;

    execute format('copy %I from %L (format csv, header)', table_name, csv_file);
end $$;
