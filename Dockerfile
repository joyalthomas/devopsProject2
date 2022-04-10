from python
maintainer joyalthomas1234@gmail.com


workdir /app

add . /app

run pip install -r requirements.txt

expose 5000

env name world

cmd ["python","app.py"]
