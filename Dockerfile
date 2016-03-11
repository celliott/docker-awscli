FROM ubuntu:14.04
MAINTAINER chris elliott

RUN apt-get update && apt-get install -y vim \
	python2.7 \
	python-pip \
	groff
	
RUN pip install awscli

CMD ["/bin/bash", "-l"]