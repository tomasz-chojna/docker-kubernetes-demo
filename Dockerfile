FROM python:3.6.2
COPY . /srv/app
WORKDIR /srv/app
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
ENV FLASK_APP app.py
CMD [ "flask", "run", "--host=0.0.0.0", "--port=5000" ]
EXPOSE 5000
