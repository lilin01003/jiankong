#!/bin/bash
now_date=`date +%F --date="0 day"`
future_date=`date +%F --date="+3 day"`

#下载流量
curl 'http://127.0.0.1:9093/api/v2/silences' \
-H 'Content-Type: application/json' \
--data '{"matchers":[{"name":"alertname","value":"下载网络流量告警","isRegex":false,"isEqual":true},{"name":"instance","value":"172.19.0.2","isRegex":false,"isEqual":true},{"name":"nodename","value":"test-Modbus","isRegex":false,"isEqual":true},{"name":"severity","value":"warning","isRegex":false,"isEqual":true}],"startsAt":"'${now_date}'T10:01:37.013Z","endsAt":"'${now_date}'T20:50:37.451Z","createdBy":"lilin","comment":"tmp","id":""}' \
--compressed --insecure

#上传流量
curl 'http://127.0.0.1:9093/api/v2/silences' \
-H 'Content-Type: application/json' \
--data '{"matchers":[{"name":"alertname","value":"上传网络流量告警","isRegex":false,"isEqual":true},{"name":"instance","value":"172.19.0.2","isRegex":false,"isEqual":true},{"name":"nodename","value":"test-Modbus","isRegex":false,"isEqual":true},{"name":"severity","value":"warning","isRegex":false,"isEqual":true}],"startsAt":"'${now_date}'T10:01:37.013Z","endsAt":"'${now_date}'T20:50:37.451Z","createdBy":"lilin","comment":"tmp","id":""}' \
--compressed --insecure

#cpu使用
curl 'http://127.0.0.1:9093/api/v2/silences' \
-H 'Content-Type: application/json' \
--data '{"matchers":[{"name":"alertname","value":"CPU告警","isRegex":false,"isEqual":true},{"name":"instance","value":"172.19.0.2","isRegex":false,"isEqual":true},{"name":"nodename","value":"test-Modbus","isRegex":false,"isEqual":true},{"name":"severity","value":"warning","isRegex":false,"isEqual":true}],"startsAt":"'${now_date}'T10:01:37.013Z","endsAt":"'${now_date}'T20:50:37.451Z","createdBy":"lilin","comment":"tmp","id":""}' \
--compressed --insecure
