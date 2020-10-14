#!/bin/bash

svn revert /usr/local/djangocloud/djangocloud

FILES=/usr/local/djangocloud/djangocloud/*.sh
chmod +x $FILES
