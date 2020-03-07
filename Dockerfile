FROM python:3.8

WORKDIR /home

ENV TELEGRAM_API_TOKEN=""
ENV TELEGRAM_ACCESS_ID=""
ENV TELEGRAM_PROXY_URL=""
ENV TELEGRAM_PROXY_LOGIN=""
ENV TELEGRAM_PROXY_PASSWORD=""

ENV TZ=Europe/Kiev
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN pip install -U pip  && apt-get update && apt-get install sqlite3
RUN pip install -r requirements.txt
COPY *.py ./
COPY base.sql ./
COPY config ./

ENTRYPOINT ["python", "rss.py"]
