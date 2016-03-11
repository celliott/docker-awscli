#docker-awscli

A docker container for running AWS CLI

Create .awsrc on host
---
	$ vim ~/.awsrc

	export AWS_ACCESS_KEY_ID=<aws_access_key_id>
	export AWS_SECRET_ACCESS_KEY=<aws_secret_access_key>
	export AWS_REGION=us-east-1

Usage
---
	$ make container
	$ make run
	$ aws help
	
[AWS CLI Usage](http://docs.aws.amazon.com/cli/latest/userguide/cli-chap-using.html)
