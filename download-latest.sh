#!/bin/bash

echo "Starting download of latest wordlists..."

wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/Web-Content/common.txt -O common.txt
wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/Web-Content/quickhits.txt -O quickhits.txt
wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/Web-Content/RobotsDisallowed-Top1000.txt -O RobotsDisallowed-Top1000.txt
wget https://raw.githubusercontent.com/Bo0oM/fuzz.txt/master/fuzz.txt -O fuzz.txt
wget https://raw.githubusercontent.com/fuzzdb-project/fuzzdb/master/discovery/predictable-filepaths/proxy-conf.txt -O proxy-conf.txt
wget https://raw.githubusercontent.com/fuzzdb-project/fuzzdb/master/discovery/URI_SCHEMES/IANA_registerd_URI_schemes.txt -O IANA_registerd_URI_schemes.txt
wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Miscellaneous/web/http-request-headers/http-request-headers-common-non-standard-fields.txt -O http-request-headers-common-non-standard-fields.txt
wget https://raw.githubusercontent.com/PortSwigger/param-miner/master/resources/headers -O headers
wget https://raw.githubusercontent.com/codingo/VHostScan/master/VHostScan/wordlists/virtual-host-scanning.txt -O virtual-host-scanning.txt

swdir="software-specific"
mkdir "$swdir"
cd "$swdir"
wget https://raw.githubusercontent.com/carlospolop/legion/036730af90a6b2947d686f32441e8894a6e32911/wordlists/iisfinal.txt -O iisfinal.txt
wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/Web-Content/CGI-XPlatform.fuzz.txt -O CGI-XPlatform.fuzz.txt
wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/Web-Content/spring-boot.txt -O spring-boot.txt
wget https://raw.githubusercontent.com/BlackFan/WEB-INF-dict/master/web-inf.txt -O web-inf.txt
wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/Web-Content/tomcat.txt -O tomcat.txt
cd ..

apidir="api-specific"
mkdir "$apidir"
cd "$apidir"
wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/Web-Content/api/api-seen-in-wild.txt -O api-seen-in-wild.txt
wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/Web-Content/api/api_endpoints.txt -O api_endpoints.txt
wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/Web-Content/common-api-endpoints-mazen160.txt -O common-api-endpoints-mazen160.txt
wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/Web-Content/api/actions.txt -O actions.txt
wget https://raw.githubusercontent.com/danielmiessler/SecLists/master/Discovery/Web-Content/api/objects.txt -O objects.txt
cd ..

git clone https://github.com/ayoubfathi/leaky-paths
cd leaky-paths
git pull
