#!/bin/bash

LINK=~/workspace

if [ -L ${LINK} ] ; then
	if [ -e ${LINK} ] ; then
		echo "Healthy"
	else
		echo "Broken"
	fi
elif [ -e ${LINK} ] ; then
	echo "Not a link"
else
	echo "Missing"
fi
