FROM python:3.9-slim

COPY app.py /app.py

RUN pip install flask

EXPOSE 5000

CMD ['python', 'app.py']
