FROM python:3.9
WORKDIR /app
COPY app/ .
RUN pip install flask redis
CMD ["python", "app.py"]

