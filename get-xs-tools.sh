#!/bin/bash

XSTOOLS_TAR=tools-iso.tar.bz2
XSTOOLS_TAR_URL=http://downloads.xen.org/XCP/${XSTOOLS_TAR}
XSTOOLS_TAR_LOCAL=/usr/groups/build/boston/latest/xe-phase-1/packages.main/${XSTOOLS_TAR}


if [ -f ${XSTOOLS_TAR_LOCAL} ] ; then
	cp ${XSTOOLS_TAR_LOCAL} .
	tar xjf ${XSTOOLS_TAR}
else
	wget ${XSTOOLS_TAR_URL}
	tar xjf ${XSTOOLS_TAR}
fi
