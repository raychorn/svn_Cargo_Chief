import sys
sys.path.insert(0, '/usr/local/django/vyperlogix_2_7_0.zip')

for f in sys.path:
    print f

from vyperlogix.django import django_utils

print django_utils.socket.gethostname()
