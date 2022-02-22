@echo off
 
REM scheduled task point to .bat files
REM besides we need to make sure we have system variables in place
 
REM export a password for use with the system (no quotes)
SET PGHOST=localhost
SET PGDATABASE=uce_database
SET PGUSER=postgres
SET PGPASSWORD=admuser
 
REM execute psql by file, even though echo is off, errors will still show
psql -X --variable=ON_ERROR_STOP= -1 -w -f createTables.sql 2>createTables.out