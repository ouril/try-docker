FROM python:3.5

RUN groupadd -r uwsgi && useradd -r -g uwsgi uwsgi 
RUN pip3 install Flask==0.12.2 uWSGI==2.0.15

WORKDIR /app

COPY app /app
COPY cmd.sh /

EXPOSE 9090 9191

USER uwsgi

CMD ["/cmd.sh"]