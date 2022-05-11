-- SELECT
--  table_name, ddl
-- FROM
--  `fb8960e5938247ef9d0de34157de0f42`.INFORMATION_SCHEMA.TABLES
-- WHERE
--  table_name="aaaa_execution_prepare"

-- CREATE TABLE `carol-fb8960e5938247ef9d0d.fb8960e5938247ef9d0de34157de0f42.aaaa_execution_prepare`
-- (
--   dateRun DATE,
--   detail STRING
-- );

insert into aaaa_execution_prepare values(current_date(), "running prepare PIPELINE script now!!!");
