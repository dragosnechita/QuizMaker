FROM python:3.8
ENV PYTHONUNBUFFERED 1
RUN mkdir /sources
WORKDIR /sources
ADD QuizMaker /sources/
RUN pip install -r requirements.txt
EXPOSE 7000
CMD exec gunicorn QuizMaker.wsgi:application -w -b 0.0.0.0:7000