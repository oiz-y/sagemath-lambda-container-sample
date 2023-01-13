FROM sagemath/sagemath


WORKDIR /var/task

RUN sudo chown sage:sage /var/task \
 && sudo chmod 777 /home/sage \
 && mkdir /home/sage/.sage \
 && sudo chmod 777 /home/sage/.sage

COPY ./src/* /var/task/
COPY ./sagebin/* /home/sage/sage/src/bin/

CMD ["sh", "run.sh"]
