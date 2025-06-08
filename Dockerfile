FROM python:3.10-alpine

WORKDIR /docs

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

CMD mkdocs serve -a 0.0.0.0:8000

EXPOSE 8000
