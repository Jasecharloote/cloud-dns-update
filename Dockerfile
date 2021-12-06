FROM python
COPY requirements.txt /requirements.txt
# RUN pip3 install -r requirements.txt 
RUN pip3 install qcloudapi-sdk-python requests
COPY ./app /app
RUN chmod +x /app/* \
    && ls /app
WORKDIR /app

CMD ["/app/tx-dns-update.sh"]
