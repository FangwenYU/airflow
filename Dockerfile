FROM python:2.7.13

#ENV AIRFLOW_VERSION=1.8.0

#RUN apt-get -y update && \
#    apt-get -y install build-essential libssl-dev libffi-dev python-dev python-pip libsasl2-dev libldap2-dev && \

RUN  pip install airflow[all]

WORKDIR /home/airflow

EXPOSE 8080
ENTRYPOINT ["airflow"]
CMD ["webserver"]
