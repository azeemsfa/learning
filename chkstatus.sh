#!/bin/bash
#ping -c 2 $1
wget http://localhost:8080

 if [ $? -eq 0 ]; then
	echo "server is up and running" >> mailbody.txt
	ssmtp sam.hima@gmail.com < mailbody.txt
	rm -rf index.html
	rm -rf mailbody.txt
 else
	echo "some thing went wrong" >> mailbody.txt
        ssmtp sam.hima@gmail.com < mailbody.txt
        rm -rf index.html
	rm -rf mailbody.txt
 fi

