
FROM python:3.6.4-alpine3.7

RUN apk update && apk add build-base && apk add nano

RUN ln -s /usr/include/locale.h /usr/include/xlocale.h

RUN mkdir Server
#COPY . /Server

#WORKDIR /Server

RUN pip install -r requirements.txt

CMD ["python", "Server.py"]

