#!/bin/bash

PREREQ_DATA=`dirname ${0}`

if [ "${UID}" -ne 0 ];
then
	echo "${0}: error: root privillege required." 1>&2
	exit 1
fi

cd / && \
dpkg -i ${PREREQ_DATA}/com.isoftru.bochs-1.0.0-1.deb && \
tar xvf ${PREREQ_DATA}/binutils-x86_64-linux-gnu-2.25.1-20160115.tar.bz2

exit ${?}
