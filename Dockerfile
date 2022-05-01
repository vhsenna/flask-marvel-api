FROM tiangolo/uwsgi-nginx-flask:python3.8
ADD . /python-flask
WORKDIR /python-flask
RUN pip install -r requirements.txt
COPY . .
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
