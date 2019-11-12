%dw 2.0

output application/xml
encoding="UTF-8",
indent=true,
writeNilOnNull=true,
writeDeclaration=false
---

{
    "records": (
        (
            payload map (obj) ->
            "record": obj
        ) reduce ($$ ++ $)
    )
}
