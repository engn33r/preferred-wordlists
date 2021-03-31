#!/bin/bash

echo "Starting download of latest wordlists..."

wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/Web-Content/common.txt
wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/Web-Content/quickhits.txt
wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/Web-Content/RobotsDisallowed-Top1000.txt
wget https://raw.githubusercontent.com/Bo0oM/fuzz.txt/master/fuzz.txt
wget https://raw.githubusercontent.com/fuzzdb-project/fuzzdb/master/discovery/predictable-filepaths/proxy-conf.txt
wget https://raw.githubusercontent.com/fuzzdb-project/fuzzdb/master/discovery/URI_SCHEMES/IANA_registerd_URI_schemes.txt
wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Miscellaneous/web/http-request-headers/http-request-headers-common-non-standard-fields.txt
wget https://raw.githubusercontent.com/PortSwigger/param-miner/master/resources/headers
wget https://raw.githubusercontent.com/codingo/VHostScan/master/VHostScan/wordlists/virtual-host-scanning.txt

swdir="software-specific"
mkdir "$swdir"
cd "$swdir"
wget https://raw.githubusercontent.com/carlospolop/legion/036730af90a6b2947d686f32441e8894a6e32911/wordlists/iisfinal.txt
wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/Web-Content/CGI-XPlatform.fuzz.txt
wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/Web-Content/spring-boot.txt
wget https://raw.githubusercontent.com/BlackFan/WEB-INF-dict/master/web-inf.txt
wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/Web-Content/tomcat.txt
cd ..

apidir="api-specific"
mkdir "$apidir"
cd "$apidir"
wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/Web-Content/api/api-seen-in-wild.txt
wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/Web-Content/api/api_endpoints.txt
wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/Web-Content/common-api-endpoints-mazen160.txt
wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/Web-Content/api/actions.txt
wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/Web-Content/api/objects.txt
cd ..

git clone https://github.com/ayoubfathi/leaky-paths
