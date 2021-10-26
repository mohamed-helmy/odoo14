FROM python:2-alpine

RUN apk update && apk add postgresql-dev gcc python-dev musl-dev

WORKDIR /usr/src/app

RUN pip install oerplib psycopg2
RUN pip install python-dateutil

COPY . .

CMD [ "python", "./initialize.py" ]
