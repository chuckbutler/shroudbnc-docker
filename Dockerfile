FROM ubuntu:xenial
ADD setup.sh /setup.sh
RUN /setup.sh
ADD start.sh /start.sh
CMD /start.sh

