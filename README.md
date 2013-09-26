RPM Specs for Logstash
======================

Tries to follow the [Java packaging guidelines](https://fedoraproject.org/wiki/Packaging:Java) from Fedora.

* Jar: /usr/share/java/logstash.jar
* Config: /etc/logstash/
* Plugins: /usr/share/logstash/
* Script: /usr/bin/logstash
* logrotate
* init script
* Running as user logstash in group logstash

Build
-----
```
git clone http://.../logstash-rpm
make
```

This will build the RPM in the directory of the checked out project.


Acknowledgments
---------------

Inspiration for this came from various other projects:
* https://github.com/NumberFour/logstash-rpms
* https://github.com/mhorbul/logstash-rpm
* https://github.com/piojo/logstash-rpm
