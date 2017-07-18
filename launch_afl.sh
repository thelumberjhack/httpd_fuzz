#!/bin/bash
# TODO: launch these commands in tmux sessions
afl-fuzz -i input -o output -x httpd.wordlist -m none -t 2000 -M apache_master -- ./targets/apache/afl/bin/httpd -X -F @@
afl-fuzz -i input -o output -x httpd.wordlist -m none -t 2000 -S apache_s01 -- ./targets/apache/afl/bin/httpd -X -F @@
afl-fuzz -i input -o output -x httpd.wordlist -m none -t 2000 -S apache_s02 -- ./targets/apache/afl/bin/httpd -X -F @@
afl-fuzz -i input -o output -x httpd.wordlist -m none -t 2000 -S apache_s03 -- ./targets/apache/afl/bin/httpd -X -F @@
afl-fuzz -i input -o output -x httpd.wordlist -m none -t 2000 -S apache_s04 -- ./targets/apache/afl/bin/httpd -X -F @@

# etc.
