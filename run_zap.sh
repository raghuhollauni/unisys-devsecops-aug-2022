#!/bin/bash
docker image pull owasp/zap2docker-stable:latest
docker container run -i owasp/zap2docker-stable:latest zap-baseline.py -t "http://3.135.118.152:8080/javavulnerablelab/" -l PASS > zap_baseline_report.html
echo $? > /dev/null
