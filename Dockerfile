FROM python:3.8

COPY ./requirements.txt /webapp/requirement.txt

WORKDIR /webapp

RUN pip install -r requirement.txt

COPY webapp/* /webapp

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]

