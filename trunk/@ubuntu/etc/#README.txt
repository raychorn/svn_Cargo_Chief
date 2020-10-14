# rc.local gets executed after boot...

(sleep 60; dhclient) &

# See also: http://askubuntu.com/questions/138757/how-can-i-automate-a-root-command-after-not-during-startup

# See also: http://kvz.io/blog/2009/12/15/run-nodejs-as-a-service-on-ubuntu-karmic/

# This will make the command wait for 60 seconds before being executed, which should allow enough time for your machine to finish booting.