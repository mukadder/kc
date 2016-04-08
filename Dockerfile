#
# Pull base image.
 FROM tutum/tomcat
MAINTAINER Hitesh Tara mukadder@bu.edu

# Kuali Release File
ENV KC_CONFIG_XML_LOC="/opt/kuali/main/dev"

# TOMCAT RELATED
ENV TOMCAT_LOCATION="/tomcat"

# MySQL Connector Java
ENV MYSQL_CONNECTOR_LINK="http://mirror.cogentco.com/pub/mysql/Connector-J/mysql-connector-java-5.1.34.zip"
ENV MYSQL_CONNECTOR_ZIP_FILE="mysql-connector-java-5.1.34.zip"
ENV MYSQL_CONNECTOR_FILE="mysql-connector-java-5.1.34/mysql-connector-java-5.1.34-bin.jar"

# Tomcat - Spring Instrumentation
ENV SPRING_INSTRUMENTATION_TOMCAT_LINK="http://central.maven.org/maven2/org/springframework/spring-instrument-tomcat/3.2.13.RELEASE/spring-instrument-tomcat-3.2.13.RELEASE.jar"

RUN mkdir -p /SetupTomcat

ADD SetupTomcat /SetupTomcat

# Install Tomcat.
RUN apt-get update
# Install unzip
RUN apt-get install -y unzip
# Install curl
RUN apt-get install -y curl

RUN \
 # apt-get update && \
  #apt-get install -y curl && \
 #apt-get install -y wget zip  && \
        cd /SetupTomcat  && \

        wget ${MYSQL_CONNECTOR_LINK} && \
        unzip -j ${MYSQL_CONNECTOR_ZIP_FILE} ${MYSQL_CONNECTOR_FILE} -d ${TOMCAT_LOCATION}/lib && \
        cp /SetupTomcat/setenv.sh ${TOMCAT_LOCATION}/bin && \
        cd ${TOMCAT_LOCATION}/lib && \
        wget ${SPRING_INSTRUMENTATION_TOMCAT_LINK} && \
        sed -i 's/<Context>/<Context>\n    <!-- END - For Kuali Coeus - Jeffery B. -->/' ${TOMCAT_LOCATION}/conf/context.xml && \
        sed -i 's/<Context>/<Context>\n    <Loader loaderClass="org.springframework.instrument.classloading.tomcat.TomcatInstrumentableClassLoader"\/>/' ${TOMCAT_LOCATION}/conf/context.xml && \
        sed -i 's/<Context>/<Context>\n\n    <!-- BEGIN - For Kuali Coeus -->/' ${TOMCAT_LOCATION}/conf/context.xml && \
        mkdir -p ${KC_CONFIG_XML_LOC} && \
        cp -f /SetupTomcat/kc-config.xml ${KC_CONFIG_XML_LOC}/kc-config.xml && \
		cp -f /SetupTomcat/kc-dev.war ${TOMCAT_LOCATION}/webapps/kc-dev.war && \

  KC_VERSION="$(curl -s https://raw.githubusercontent.com/kuali/kc/master/pom.xml | egrep -m 1 "<version>" | sed 's/<version>//' | sed 's/\..*//' | awk '{print $1}')" && \
        KC_WAR_FILE_LINK="http://www.kuali.erafiki.com/${KC_VERSION}/mysql/kc-dev.war" && \
#       KC_PROJECT_RICE_XML="http://www.kuali.erafiki.com/${KC_VERSION}/xml_files/rice-xml-${KC_VERSION}.zip" && \
#       KC_PROJECT_COEUS_XML="http://www.kuali.erafiki.com/${KC_VERSION}/xml_files/coeus-xml-${KC_VERSION}.zip" && \

#       wget ${KC_WAR_FILE_LINK} -O ${TOMCAT_LOCATION}/webapps/kc-dev.war && \
#       mkdir -p ${TOMCAT_LOCATION}/webapps/ROOT/xml_files && \
#       wget ${KC_PROJECT_RICE_XML} -O ${TOMCAT_LOCATION}/webapps/ROOT/xml_files/rice-xml-$(echo ${KC_VERSION} | sed 's/coeus-//').zip && \
#       wget ${KC_PROJECT_COEUS_XML} -O ${TOMCAT_LOCATION}/webapps/ROOT/xml_files/coeus-xml-$(echo ${KC_VERSION} | sed 's/coeus-//').zip && \
        rm -fr /SetupTomcat && \
        echo "Done!!!"

# Expose ports.
EXPOSE 8080

# Define default command.
CMD export TERM=vt100; sed -i "s/localhost/$(hostname -f)/" ${KC_CONFIG_XML_LOC}/kc-config.xml; sed -i "s/Kuali-Coeus-Version/${KC_VERSION}/" ${KC_CONFIG_XML_LOC}/kc-config.xml; ${TOMCAT_LOCATION}/bin/startup.sh; tailf ${TOMCAT_LOCATION$


