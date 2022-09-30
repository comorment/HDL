# R container
FROM rocker/verse:4.0.3

ENV TZ=Europe
ENV DEBIAN_FRONTEND noninteractive

# Essential tools
WORKDIR /tmp
COPY /scripts/apt_get_essential.sh .
RUN chmod +x apt_get_essential.sh
RUN bash apt_get_essential.sh

RUN apt-get update -y && apt-get install -y libperl-dev

# R packages
RUN R -e "install.packages('rmarkdown')"
RUN R -e "install.packages('ggplot2')"
RUN R -e "install.packages('data.table')"
RUN R -e "install.packages('optparse')"
RUN R -e "install.packages('foreign')"
RUN R -e "install.packages('mvtnorm')"

RUN R -e "setRepositories(ind=1:8); install.packages('devtools')"

WORKDIR /tools

# v1.4.0 (2021-04-15)
RUN git clone https://github.com/zhenin/HDL && cd HDL && git reset --hard d74e85b38b6ecc2b8610b731748602eb2be17c84 && Rscript HDL.install.R


