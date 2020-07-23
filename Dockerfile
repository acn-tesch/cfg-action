FROM ubuntu:focal

# add needed packages
# install git and build essential
RUN apt-get update && apt-get install -y build-essential

# move bin to folder in the path
ADD ./cloudformation-guard/cfn-guard /usr/bin/cfn-guard
ADD ./cloudformation-guard/cfn-guard-rulegen /usr/bin/cfn-guard-rulegen
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh  && chmod +x /usr/bin/cfn-guard && chmod +x /usr/bin/cfn-guard-rulegen
#change user

# entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]
