FROM python:3.5

RUN groupadd -r uwsgi && useradd -r -g uwsgi uwsgi 
RUN pip3 install Flask==0.12.2 uWSGI==2.0.15
WORKDIR /app
COPY app /app
EXPOSE 9090 9191
USER uwsgi
CMD ["uwsgi", "--http", "0.0.0.0:9090", "--wsgi-file", "/app/indentidock.py", \ 
     "--callable", "app", "--stats", "0.0.0.0:9191"]