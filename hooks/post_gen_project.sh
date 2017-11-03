#!/bin/sh

set -e

git init
git add -A .
git commit -m "Initial Commit"
git flow init -d
open -a Xcode {{ cookiecutter.name }}.xcodeproj
{% if cookiecutter.fabric == "Yes" %}
curl -O https://s3.amazonaws.com/kits-crashlytics-com/ios/com.twitter.crashlytics.ios/3.9.3/com.crashlytics.ios-manual.zip
unzip com.crashlytics.ios-manual.zip
rm com.crashlytics.ios-manual.zip
{% endif %}
