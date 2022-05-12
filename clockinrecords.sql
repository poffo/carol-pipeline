 with a as (
    select [
    struct("5050" as devicecode, "test" as appname, "asdadadsasd" as piscode, current_datetime() as eventdatestr)
    ] as clockinrecords
    ),
    c as (
        select deviceCode, appname, "na" as piscode, clockinDatetime eventdatestr
        from stg_clockinmobile_clockinrecords
    ),
    AC as (
        select * except(clockinrecords) from a, unnest (clockinrecords)
        union all
        select * from c
    )

    select *,
        piscode as __mdmId,
        0 as __mdmCounterForEntity

    from AC
