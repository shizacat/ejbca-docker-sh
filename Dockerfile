FROM primekey/ejbca-ce:6.15.2.1
MAINTAINER shizacat

COPY data/ /tmp/

USER root
RUN yum install -y zip && \
    cd /tmp && \
    zip /opt/primekey/ejbca/dist/ejbca.ear/lib/cesecore-common.jar profilemappings.properties && \
    if [ -f /tmp/dncomponents.properties ] ; then \
    	zip /opt/primekey/ejbca/dist/ejbca.ear/lib/cesecore-common.jar dncomponents.properties ; \
    fi && \
    rm /tmp/profilemappings.properties
