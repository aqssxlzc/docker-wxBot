FROM jfloff/alpine-python:2.7
MAINTAINER aqssxlzc@gmail.com
RUN apk upgrade --update && apk add freetype-dev \
libjpeg-turbo-dev \
libpng-dev
RUN pip install requests
RUN pip install pypng
RUN pip install pyqrcode
RUN pip install Pillow
RUN apk add git
RUN git clone https://github.com/liuwons/wxBot.git
RUN sed -i -- 's/png/tty/g' /wxBot/test.py
CMD [ "python","/wxBot/test.py" ]