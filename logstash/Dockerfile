FROM logstash:8.6.2
MAINTAINER noname

# install dependency
RUN /usr/share/logstash/bin/logstash-plugin install logstash-integration-jdbc
#RUN /usr/share/logstash/bin/logstash-plugin install logstash-filter-aggregate
#RUN /usr/share/logstash/bin/logstash-plugin install logstash-filter-jdbc_streaming
#RUN /usr/share/logstash/bin/logstash-plugin install logstash-filter-mutate

# copy lib database jdbc jars
COPY ./logstash/pipeline/postgresql-42.2.8.jar /usr/share/logstash/logstash-core/lib/jars/postgresql.jar
