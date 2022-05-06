 with a as (
    select [
    struct("5050" as devicecode, "test" as appname, "asdadadsasd" as piscode, current_datetime() as mdmeventdate)
    ] as clockinrecords
    )

    select * except(clockinrecords),
        piscode as __mdmId,
        0 as __mdmCounterForEntity

    from a, unnest (clockinrecords)
