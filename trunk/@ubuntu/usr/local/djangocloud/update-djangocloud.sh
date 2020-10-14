#!/bin/bash

svn update /usr/local/djangocloud/djangocloud

FILES=/usr/local/djangocloud/djangocloud/*.sh
chmod +x $FILES
