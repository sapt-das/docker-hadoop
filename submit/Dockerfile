FROM sapdas/hadoop-base:2.10.2
MAINTAINER Ivan Ermilov <ivan.s.ermilov@gmail.com>
MAINTAINER Gezim Sejdiu <g.sejdiu@gmail.com>


ENV JAR_FILEPATH="/opt/hadoop/applications/application.jar"
ENV CLASS_TO_RUN="my.main.Application"
ENV PARAMS=""

ADD submit.sh /submit.sh
RUN chmod a+x /submit.sh

CMD ["/submit.sh"]
