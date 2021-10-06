FROM python:3.8

COPY ./requirements.txt /webapp/requirement.txt

WORKDIR /webapp

RUN apt get update
RUN pip install -r requirement.txt
RUN pip install flask

COPY webapp/* /webapp

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]

