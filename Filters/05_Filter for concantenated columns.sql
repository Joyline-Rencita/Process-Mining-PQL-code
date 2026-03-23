FILTER ${ (dimension_benchmark ==="companycode_cc" && "EKPO.BUKRS ||' - '|| EKPO.BUKRS_TEXT") } = '${benchmark_1}'

FILTER ${(dimension_benchmark ==="companycode_cc" && "EKPO.BUKRS ||' - '||  EKPO.BUKRS_TEXT") || (dimension_benchmark ==="companycode_cc" && "EKPO.BUKRS ||' - '||  EKPO.BUKRS_TEXT" )} = '${benchmark_1}'
