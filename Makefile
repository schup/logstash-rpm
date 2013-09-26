
all: init download build

# setup RPM build in current directory
init:
	mkdir -p ./{BUILD,RPMS,SRPMS}

download:
	spectool -gf -C SOURCES SPECS/logstash.spec

build:
	rpmbuild --define "_topdir $$PWD" -ba SPECS/logstash.spec

clean:
	rm -fr RPMS/*

