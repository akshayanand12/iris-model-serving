FROM tiangolo/uwsgi-nginx-flask:python3.6

WORKDIR usr/src/app/

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

ENV ENVIRONMENT production

CMD ["python", "./main.py"]
