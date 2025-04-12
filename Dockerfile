#get python image 
FROM python:3.11-alpine

#Define working directory
WORKDIR /app

#Copy requirements 
COPY requirements.txt .

#Install packages 
RUN pip install --no-cache-dir -r requirements.txt

#Copy script 
COPY app.py .

#Run script
ENTRYPOINT [ "python","app.py" ]