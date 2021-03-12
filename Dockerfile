
FROM python:3.7

RUN pip install Flask numpy pandas dash gunicorn

COPY src/ app/

WORKDIR app/

ENV PORT 8050

CMD exec gunicorn --bind :$PORT --workers 1 --threads 8 app:app
