FROM  continuumio/anaconda3

WORKDIR /app

# Add actual source code.
ADD ./app/ /app

EXPOSE 8080

CMD ["python", "blockchain_client.py", "--port", "8080"]
