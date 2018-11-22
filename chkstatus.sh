#!/bin/bash
ping 80.80.80.80

 if [$? -eq 0]
 then
	echo "server is up and running"
 else
	echo "some thing went wrong"
 fi

