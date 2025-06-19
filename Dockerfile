ARG PORT
FROM python:3.10-alpine
EXPOSE ${PORT}

ENV PORT=${PORT}

WORKDIR /docs

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

CMD mkdocs serve -a 0.0.0.0:${PORT}
