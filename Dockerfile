FROM python:3.12.3

RUN apt -y update
RUN apt -y upgrade
RUN apt install

RUN pip install --upgrade pip
RUN pip install notebook==6.5.7

EXPOSE 8888

RUN mkdir /root/fuzzingbook

WORKDIR /root/fuzzingbook

CMD ["jupyter", "notebook", "--allow-root", "-y", "--no-browser", "--ip=0.0.0.0", "--port=8888"]