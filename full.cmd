


@echo off                                                                     
if "%1"=="" goto uso                                                          
if "%2"=="" goto uso                                                          
if "%3"=="" goto uso                                                          
if "%4"=="" goto uso                                                          
if "%5"=="" goto uso                                                           

if not exist %5 ( 
md %5
)                                                        
                    
@echo off
 
REM scheduled task point to .bat files
REM besides we need to make sure we have system variables in place
 
REM export a password for use with the system (no quotes)
SET PGHOST=%3
SET PGDATABASE=%4
SET PGUSER=%1
SET PGPASSWORD=%2
 
REM execute psql by file, even though echo is off, errors will still show
psql -X --variable=ON_ERROR_STOP= -1 -w -f createTables.sql 2> %5\createTables.out


goto fin                                                                      
                                                                              
:uso                                                                          
echo Uso: full.cmd user password SERVER_BDD BDD path_out

:ayuda
echo full.cmd [parametro 1] [parametro 2] [parametro 3] [parametro 4] [parametro 5] 
echo donde:
echo [parametro 1]: usuario de base de datos
echo [parametro 2]: password del usuario de base de datos
echo [parametro 3]: servidor de base de datos 
echo [parametro 4]: base de datos
echo [parametro 4]: directorio del logs de instalacion 
:fin                                                                        
                                                                              
                                                                              