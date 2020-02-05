#!/bin/bash

sudo chmod +x cve5scan.sh
mkdir output
cd cve
git clone https://github.com/mazen160/struts-pwn.git
git clone https://github.com/mazen160/struts-pwn_CVE-2018-11776.git
git clone https://github.com/mazen160/struts-pwn_CVE-2017-9805.git
