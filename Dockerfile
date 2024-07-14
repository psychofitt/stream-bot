FROM python:3.10-slim

RUN apt-get update && apt-get install -y tzdata
ENV TZ=Europe/London

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

CMD ["python", "utils_bot.py"]
