FROM python:3.6.3

WORKDIR /usr/src/app
RUN git clone https://github.com/bashkirtsevich/grapefruit-web.git .
RUN pip install -r requirements.txt

ENV MONGODB_URL=mongodb://mongodb:27017/grapefruit

EXPOSE 8080

CMD [ "python", "./app.py" ]