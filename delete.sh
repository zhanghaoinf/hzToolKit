#!/bin/bash
rsync --delete-before -a -H -v --progress --stats ./empty/ $1
