FROM racket/racket

RUN apt update &&\
  apt install -y fontconfig xvfb &&\
  raco pkg install --auto --no-docs slideshow &&\
  apt clean &&\
  rm -rf /var/lib/apt/lists/*

ENV FONTCONFIG_FILE=/etc/fonts/fonts.conf

CMD bash
