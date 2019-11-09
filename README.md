# convert xml to csv (and vice-versa) using dataweave

## Prerequisites
To run the following you need the `dw` commandline client, you can check it out (or download binaries) here: https://github.com/mulesoft-labs/data-weave-native

## Getting Started

### CSV -> XML
We have an input file that looks like this:
```text
name,identifier,maybe
joe,1234087612346780,yes
julie,5374859265948766,
```

Now we'll feed this and the convert script to the dataweave binary:
**N.B.** Please note that the `payload` variable is used in the dataweave script
```bash
dw -f csv2xml.dwl -i payload input.csv
```

You should see something like this:
```xml
<?xml version='1.0' encoding='UTF-8'?>
<records>
  <record>
    <name>joe</name>
    <identifier>1234087612346780</identifier>
    <maybe>yes</maybe>
  </record>
  <record>
    <name>julie</name>
    <identifier>5374859265948766</identifier>
    <maybe/>
  </record>
</records>

```

### XML -> CSV
Converting from XML is more or less the same (again `payload` is mandatory), the result should look similar to the csv content shown earlier
```bash
dw -f xml2csv.dwl -i payload input.xml
```

### Settings
If you take a look in the scripts, you can find some writer settings for adjusting the output.

### Sources
- https://docs.mulesoft.com/mule-runtime/4.2/dataweave
- https://docs.mulesoft.com/mule-runtime/4.2/dataweave-formats
