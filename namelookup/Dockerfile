FROM busybox:latest


COPY script.sh /script.sh
RUN chmod 777 /script.sh

CMD /script.sh && while :; do sleep 10; done


#CMD ["/bin/bash", "-c", "while :; do sleep 10; done"]

