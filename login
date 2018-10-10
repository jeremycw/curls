#!/usr/bin/env sh
source ./tools/util.sh
curl `config user-module.base`/v1/oauth/token \
-i -s -w "\n" \
-XPOST \
-H'Content-Type: application/x-www-form-urlencoded' \
-H"Authorization: Basic `config basic.token`" \
-d"grant_type=password&username=`config username`&password=`config password`" \
| ./tools/save_auth.rb | ./tools/pretty_json.rb
