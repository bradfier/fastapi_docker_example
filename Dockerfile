FROM python:3.10-buster
WORKDIR /opt/app

RUN pip install poetry

ADD ./ ./

RUN poetry install

CMD [ "poetry", "run", "uvicorn", "--host", "0.0.0.0", "--port", "8000", "fastapi_docker_example.main:app" ]
EXPOSE 8000
