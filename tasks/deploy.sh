#!/usr/bin/env bash
jekyll build && rsync -avz -e "ssh -p 2683 -i ~/.ssh/scarlett_rsa" --delete _site/ jahlaorg@jahla.org:public_html/
