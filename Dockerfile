FROM continuumio/miniconda3:4.10.3p1

LABEL "repository"="https://github.com/BEFH/conda-package-publish-action"
LABEL "maintainer"="Andrew Prokhorenkov <andrew.prokhorenkov@gmail.com>"

RUN apt-get --allow-releaseinfo-change update && \
  apt-get install -y build-essential libgl1-mesa-glx --fix-missing && \
  conda install -y anaconda-client conda-build
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
