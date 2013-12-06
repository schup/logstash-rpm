#!/usr/bin/env sh

rpmlint SPECS/logstash.spec
spectool -C SOURCES -g SPECS/logstash.spec
rpmbuild --define "_topdir `pwd`" -bs SPECS/logstash.spec
rpmlint SRPMS/logstash-1.2.2-1.el6.src.rpm
mock --resultdir RPMS SRPMS/logstash-1.2.2-1.el6.src.rpm
rpmlint RPMS/logstash-1.2.2-1.el6.noarch.rpm
