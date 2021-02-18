# Preferred Wordlists

Yet another collection of wordlists

## Useful wordlists from a variety of sources
1. common.txt from [SecLists](https://github.com/danielmiessler/SecLists), for .well-known/ paths
2. quickhits.txt from [SecLists](https://github.com/danielmiessler/SecLists), for 3rd party default content URLs (with many version numbers)
3. RobotsDisallowed-Top1000.txt from [SecLists](https://github.com/danielmiessler/SecLists), for potentially sensitive directories
4. fuzz.txt from [fuzz.txt](https://github.com/Bo0oM/fuzz.txt), for swagger paths
5. proxy-conf.txt from [fuzzdb](https://github.com/fuzzdb-project/fuzzdb), for proxy-related config files
6. IANA_registerd_URI_schemes.txt from [fuzzdb](https://github.com/fuzzdb-project/fuzzdb), for scheme fuzzing
7. http-request-headers-common-non-standard-fields.txt from [SecLists](https://github.com/danielmiessler/SecLists), for header fuzzing with special values
8. headers from [param-miner](https://github.com/PortSwigger/param-miner), for header fuzzing
9. virtual-host-scanning.txt from [VHostScan](https://github.com/codingo/VHostScan), for virtual host fuzzing

## Software specific
Pretty much all of:
1. https://github.com/fuzzdb-project/fuzzdb/tree/master/discovery/predictable-filepaths/webservers-appservers
2. https://github.com/danielmiessler/SecLists/tree/master/Discovery/Web-Content
3. https://github.com/koutto/jok3r/tree/master/wordlists/services/http/discovery

Useful individual files:
1. iisfinal.txt from [legion](https://github.com/carlospolop/legion), for version-specific IIS paths
2. CGI-XPlatform.fuzz.txt from [SecLists](https://github.com/danielmiessler/SecLists), for realistic CGI server paths
3. spring-boot.txt from [SecLists](https://github.com/danielmiessler/SecLists), for how common Spring Boot is
4. web-inf.txt from [WEB-INF-dict](https://github.com/BlackFan/WEB-INF-dict), for Java-specific paths
5. tomcat.txt from [SecLists](https://github.com/danielmiessler/SecLists), for how popular Tomcat is

## API specific
1. api-seen-in-wild.txt from [SecLists](https://github.com/danielmiessler/SecLists), for real world paths
2. api_endpoints.txt and common-api-endpoints-mazen160.txt from [SecLists](https://github.com/danielmiessler/SecLists), for realistic API paths
3. actions.txt and objects.txt from [SecLists](https://github.com/danielmiessler/SecLists), for specific API words
