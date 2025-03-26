  -- Create the monitoring user "grafanau"
  ALTER SESSION SET CONTAINER = FREEPDB1;
  CREATE USER grafanau IDENTIFIED BY Oracle;
  
  -- Grant the "grafanau" user the required permissions
  GRANT CONNECT TO grafanau;
  GRANT SELECT ON SYS.V_$RESOURCE_LIMIT to grafanau;
  GRANT SELECT ON SYS.V_$SESSION to grafanau;
  GRANT SELECT ON SYS.V_$WAITCLASSMETRIC to grafanau;
  GRANT SELECT ON SYS.V_$PROCESS to grafanau;
  GRANT SELECT ON SYS.V_$SYSSTAT to grafanau;
  GRANT SELECT ON SYS.V_$DATAFILE to grafanau;
  GRANT SELECT ON SYS.V_$ASM_DISKGROUP_STAT to grafanau;
  GRANT SELECT ON SYS.V_$SYSTEM_WAIT_CLASS to grafanau;
  GRANT SELECT ON SYS.DBA_TABLESPACE_USAGE_METRICS to grafanau;
  GRANT SELECT ON SYS.DBA_TABLESPACES to grafanau;
  GRANT SELECT ON SYS.GLOBAL_NAME to grafanau;
  