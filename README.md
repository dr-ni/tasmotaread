# tasmotaread
Simple tasmota smart-meter command-line tool
see also https://tasmota.github.io/docs/Smart-Meter-Interface/

## Requirements

- curl and jq must be installed.

## Development


Install:
```sh
sudo make install
```

Uninstall:
```sh
sudo make uninstall
```

## Usage
```
tasmotaread <host>
```
## Sonoff Basic E320 script
```
>D
>B
=>sensor53 r
>M 1
+1,3,s,20,9600,E320
1,77070100020800ff@1000,Total Delivered,KWh,Total_out,3
1,77070100010800ff@1000,Total Consumed,KWh,Total_in,3
1,77070100100700ff@1,Current consumption,W,Power_in,3
1,77070100600100ff@#,Server-ID,,Meter_Number,0
```
-
https://github.com/dr-ni/tasmotaread
