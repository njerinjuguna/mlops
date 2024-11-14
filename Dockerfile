FROM python:3.11

WORKDIR /code

COPY . /code


RUN pip install -r requirements.txt

ENV PYTHONPATH=/code

EXPOSE 8000

CMD ["uvicorn", "server:app", "--host", "0.0.0.0", "--port", "8000"]