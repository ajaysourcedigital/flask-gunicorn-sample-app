FROM python3.9
RUN mkdir /app
COPY . /app/
WORKDIR /app
RUN pip3 install --upgrade -r requirements.txt
CMD gunicorn -b 0.0.0.0:4000 -w=2 wsgi:app
