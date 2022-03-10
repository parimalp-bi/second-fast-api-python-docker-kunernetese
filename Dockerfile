FROM python:3.9.4-slim

WORKDIR /opt/apps/

COPY ./python_app python_app

WORKDIR /opt/apps/python_app
# set environment variables these variables stops python writing pyc files
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN pip install -r requirements.txt

EXPOSE 5151
CMD [ "uvicorn" ,"app:app", "--host", "0.0.0.0", "--port", "5151"]



