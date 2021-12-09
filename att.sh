#!/usr/bin/bash
while true ;
do 

  for i in {0..9};
  do
    sleep 5
    service tor restart
    proxychains  ffuf -request  /home/bhanu/Desktop/f -w /home/bhanu/$i -p 1 -t 2 
    #proxychains curl api.ipify.org
  done
done
