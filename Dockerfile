FROM python:3.10-alpine

WORKDIR /docs

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000