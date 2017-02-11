FROM jfloff/alpine-python:2.7
RUN apk upgrade --update && apk add freetype-dev \
libjpeg-turbo-dev \
libpng-dev
RUN pip install requests
RUN pip install pypng
RUN pip install pyqrcode
RUN pip install Pillow
RUN apk add git
RUN git clone https://github.com/liuwons/wxBot.git
WORKDIR /wxBot
CMD "python" "wxbot.py"