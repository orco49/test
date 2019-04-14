#!/bin/bash
version=$1
mail=$2

if [ $# -ne 2 ]
then
	echo "Please enter 2 arguments:
		1) version of the tar.gz file
		2) your mail"
	exit 1
else
	wget https://github.com/oktadeveloper/okta-aws-cli-assume-role/archive/v"$version".tar.gz
	tar -xvzf v"$version".tar.gz
	okta-aws-cli-assume-role-$version/bin/install.sh -i
	echo "OKTA_ORG=lemonade.okta.com" > ~/.okta/config.properties
	echo "OKTA_AWS_APP_URL=https://lemonade.okta.com/home/amazon_aws/0oa9qbab5X7BfzpF1356/272" >> ~/.okta/config.properties
	echo "OKTA_USERNAME=$mail" >> ~/.okta/config.properties
	cp -rv ~/.okta/bin/* /usr/local/bin/
fi
