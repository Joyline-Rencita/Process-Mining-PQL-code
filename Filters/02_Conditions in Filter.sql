FILTER (
    YEAR("X"."y") >= 2019
    AND (
        ROUND_DAY("X"."y") != ROUND_DAY("A"."b")
        OR ROUND_DAY("X"."y") != ROUND_DAY("M"."n")
        OR ROUND_DAY("A"."b") != ROUND_DAY("M"."n")
    )
    OR (
        ROUND_DAY("A"."b") != DATE('2019-01-01') OR  ROUND_DAY("M"."n") != DATE('2019-01-01')
    )
)
