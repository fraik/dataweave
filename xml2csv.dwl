%dw 2.0

output application/csv
encoding="UTF-8",
header=true,
quote='|',
quoteHeader=false,
quoteValues=false,
separator=","
---

payload.records.*record
