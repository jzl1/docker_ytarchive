FROM alpine
WORKDIR /app
RUN apk update \
  && apk add --no-cache curl unzip yasm ffmpeg bash\
  && curl -L https://github.com/Kethsar/ytarchive/releases/download/v0.3.2/ytarchive_linux_amd64.zip > /app/ytarchive.zip \
  && curl -L https://raw.githubusercontent.com/jzl1/docker_ytarchive/main/start.sh > /app/start.sh \
  && unzip /app/ytarchive.zip \
  && chmod +x /app/*
CMD bash /app/start.sh
