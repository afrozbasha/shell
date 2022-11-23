#!/bin/bash

status=$(helm status nginx | grep "STATUS")
temp="STATUS: deployed"
#Check equality two string variables

if [$status==$temp] 
then
          echo "Helm chat is deployed"
else
          echo "Helm chat is not deployed"
fi
