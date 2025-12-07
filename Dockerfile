FROM python:3.11.7-slim 

LABEL maintainer="STAT 315 GROUP 5" 
LABEL authors="Abdussalam Raheem, Jacob Joseph, Anuraag Deepak"
LABEL version="1.0"
LABEL description="ML environment for predicting men's international football match results"

RUN apt-get update -y
RUN apt-get install -y gcc
RUN apt-get install -y build-essential libpq-dev
RUN apt-get install -y graphviz

RUN pip install --upgrade pip

RUN pip install \
    pandas==2.1.1 \
    numpy==1.26.0 \
    scikit-learn==1.3.0 \
    xgboost==2.0.0 \
    matplotlib==3.7.2 \
    seaborn==0.13.0 \
    imbalanced-learn==1.1.2 \
    jupyter==1.0.0

WORKDIR /workspace

COPY --chown=1000:100 . /workspace


CMD jupyter notebook --no-browser --allow-root --ip 0.0.0.0
