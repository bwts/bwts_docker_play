# The args to be pass to this file, such as specific version/tag where it should be set on env file
# ARG NAME
# Base image
FROM debian:jessie

# Run, What to install when its building.
# Each run creates a new image layer, time/resource consumming...
# so use block chain to use only one RUN for all instruction
#  Sort multiline alphabetic avoiding duplication.
RUN apt-get update && apt-get install -y \
  git \
  vim

# what to run when building the image -- only run when container starts up.
CMD ["echo", "BWTS Labs 2019!"] 

