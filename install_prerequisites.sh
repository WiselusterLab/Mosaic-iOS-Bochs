#!/bin/bash

PREREQ_DATA=`pwd`

if [ "${UID}" -ne 0 ];
then
	echo "${0}: error: root privillage repquired." 1>&2
	exit 1
fi

dpkg -i isoftcom-bochs-1.0.deb && \
cd / && \
tar xvf ${PREREQ_DATA}/binutils-x86_64-linux-gnu-2.25.1.tar.bz2

exit ${?}