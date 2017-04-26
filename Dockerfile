FROM python:2.7.13

#ENV AIRFLOW_VERSION=1.8.0

#RUN apt-get -y update && \
#    apt-get -y install build-essential libssl-dev libffi-dev python-dev python-pip libsasl2-dev libldap2-dev && \

ARG AIRFLOW_VERSION=1.8.0

RUN  apt-get -y update \
     && apt-get -y install mysql-client \
     && apt-get -y install git \ 
     && pip install airflow[crypto,celery,postgres,hive,hdfs,jdbc,mysql,druid,async,password,s3]==$AIRFLOW_VERSION \
     && pip install celery[redis]==3.1.17 \
     && apt-get install python-dev libmysqlclient-dev \
     && pip install MySQL-python
