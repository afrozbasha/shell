#!/bin/bash

status=$(helm status nginx | grep "STATUS")
temp="STATUS: deployed"
#Check equality two string variables

if [$status==$temp]; then
          echo "Helm chat is deployed"
          helm status nginx | grep "STATUS"

  else
            echo "Helm chat is not deployed"
            helm delete nginx
    fi
