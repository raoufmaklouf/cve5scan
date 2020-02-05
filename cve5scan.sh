#!/bin/bash

cat $1 | while read line
do


echo "-------------$line-----------------------"

#CVE-2017-5638
echo 'CVE-2017-5638:'
v1=$(python cve/struts-pwn/struts-pwn.py --check --url $line  2>/dev/null| grep 'Status:')
if [ "${v1}" != '[*] Status: Not Affected.' ] ;then
echo "
------------Vulnerable!---------------------------------------------------
$line
$v1
CVE-2017-5638
--------------------------------------------------------------------------
" >>  output/$line.txt 
echo -e "\033[0;31m$v1\e[0m"
else
echo -e "\033[1;33m$v1\e[0m"
fi


#CVE-2017-9805
echo 'CVE-2017-9805:'
v2=$(python cve/struts-pwn_CVE-2017-9805/struts-pwn.py --url $line 2>/dev/null | grep 'Status:')
if [ "${v2}" != '[*] Status: Not Affected.' ] ;then
echo "
------------Vulnerable!---------------------------------------------------
$line
$v2
CVE-2017-9805
--------------------------------------------------------------------------
" >> output/$line.txt
echo -e "\033[0;31m$v2\e[0m"
else
echo -e "\033[1;33m$v2\e[0m"
fi

#CVE-2018-11776
echo 'CVE-2018-11776:'
v3=$(python cve/struts-pwn_CVE-2018-11776/struts-pwn.py --url $line 2>/dev/null | grep 'Status:')
if [ "${v3}" != '[*] Status: Not Affected.' ] ;then
echo "
------------Vulnerable!---------------------------------------------------
$line
$v3
CVE-2018-11776
--------------------------------------------------------------------------
" >> output/$line.txt
echo -e "\033[0;31m$v3\e[0m"
else
echo -e "\033[1;33m$v3\e[0m"
fi

#CVE-2017-12617
echo 'CVE-2017-12617:'
v4=$(timeout --signal=SIGINT 5 python cve/Tomcat-CVE-2017-12617.py -u http://$line 2>/dev/null | grep 'http')
if [ -z  "${v4}" ] ;then
echo -e "\033[1;33m[*] Status: Not Affected.\e[0m"

else
echo "
------------Vulnerable!---------------------------------------------------
$line
Poc Filename  http://$line/Poc.jsp
CVE-2018-11776
--------------------------------------------------------------------------
" >> output/$line.txt
echo -e "\033[0;31mStatus: Vulnerable! \e[0m"
fi


#CVE-2018-7600
echo 'CVE-2018-7600:'
v5=$(ruby cve/Drupalgeddon2-CVE-2018-7600.rb https://$line 2>/dev/null  | grep "[+] Good News Everyone!" 
)
if [ -z "${v5}"  ] ;then
echo -e "\033[1;33m[*] Status: Not Affected.\e[0m"
else
echo "
------------Vulnerable!---------------------------------------------------
$line
Vulnerable!
CVE-2018-7600
--------------------------------------------------------------------------
" >> output/$line.txt
echo -e "\033[0;31mStatus: Vulnerable!\e[0m"
fi
done

