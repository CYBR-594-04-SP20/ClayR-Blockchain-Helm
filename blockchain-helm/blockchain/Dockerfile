FROM  continuumio/anaconda3

WORKDIR /app

# Add actual source code.
ADD ./app/ /app

RUN pip install flask-cors

EXPOSE 5000

CMD ["python", "blockchain.py", "--port", "5000"]
