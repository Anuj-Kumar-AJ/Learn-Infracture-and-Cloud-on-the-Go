FROM alpine:3.14
WORKDIR /firstProgram
COPY . .
RUN apk update && apk upgrade --available 
RUN apk add --update python3
CMD ["python3", "hello.py"]
