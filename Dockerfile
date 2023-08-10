## base image of python
FROM python:3.7

WORKDIR /code

#install python dependencies
RUN pip3 install psycopg2

#Copy python code inside of container
COPY list-data-table.py /code/

CMD ["python", "list-data-table.py"]