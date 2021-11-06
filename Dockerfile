FROM python:3.9
ENV PYTHONBUFFERED=1
WORKDIR /code
COPY requirements.txt /code/
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
COPY . /code/
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
