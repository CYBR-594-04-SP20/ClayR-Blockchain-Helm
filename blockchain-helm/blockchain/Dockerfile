FROM  continuumio/anaconda3

WORKDIR /app

RUN pip install flask-cors


# Add actual source code.
ADD ./app/ /app


EXPOSE 5000

CMD ["python", "blockchain.py", "--port", "5000"]
