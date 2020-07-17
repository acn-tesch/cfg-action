FROM rust:1.44.1-slim


# create user


# add needed packages
# install git and build essential
RUN apt-get update && apt-get install -y git build-essential

# pull cloudformation-guard and build it
# version 5.0.2-beta
RUN cd /tmp && git clone https://github.com/aws-cloudformation/cloudformation-guard.git && cd cloudformation-guard && make

# move bin to folder in the path
ADD ./bin/cfn-guard /usr/bin/cfn-guard
ADD ./bin/cfn-guard-rulegen /usr/bin/cfn-guard-rulegen

#change user

# entrypoint.sh
ENTRYPOINT [ "/usr/bin/cfn-guard" ]