%dw 2.0

fun flatterizer (thingy) = thingy mapObject(value, key) -> value match {

    // if the value is an object keep on looking further down the tree until we reach the leave object
    case is Object -> flatterizer(value)

    // otherwise output it immediatly
    else -> (key as String): value
}

output application/csv
encoding="UTF-8",
header=true,
quote='|',
quoteHeader=false,
quoteValues=false,
separator=","
---

flatterizer(payload)
