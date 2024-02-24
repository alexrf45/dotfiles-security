aws ce get-cost-and-usage                                  \
    --time-period 'Start=2021-01-01,End=2022-02-01'        \
    --metrics     'UnblendedCost'                          \
    --granularity 'MONTHLY'                                \
    --query       'ResultsByTime[*].Total.[UnblendedCost]' \
    --output      'table'
