# base image of python
FROM python:3.7-alpine

# Environment variable
ENV PYTHONUNBUFFERED 1

# creating folder in the container
RUN mkdir /app

# working directory will be where we want our files to be
WORKDIR /app

# To install dependencies copty the reqirements.txt file and push that into our directory
COPY requirements.txt /app/

# Install dependencies on requirements.txt file
RUN pip install -r requirements.txt

# copy entire project into the container's directory so the /app will have entire project in the container
COPY . /app/
