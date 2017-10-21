FROM jrottenberg/ffmpeg:3.3
RUN apt-get install -y fontconfig
WORKDIR /
COPY ./start.sh .
RUN chmod +x ./start.sh
VOLUME [ "/data" ]
ENV generate_gif=true
ENTRYPOINT [ "/bin/bash" ]
CMD [ "/start.sh" ]