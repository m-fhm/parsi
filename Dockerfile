FROM python:3.10.0a6-alpine3.13

ENV PYTHONUNBUFFERED 1
COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user



# FROM python:3.10.0a6-alpine3.13


# ENV PYTHONUNBUFFERED 1

# # Install dependencies
# COPY ./requirements.txt /requirements.txt
# RUN pip install -r /requirements.txt

# # Setup directory structure
# RUN mkdir /app
# WORKDIR /app
# COPY ./app/ /app

# RUN adduser -D user
# USER user