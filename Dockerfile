# From the python version 3.8
FROM python:3.8

# Copy to "app" from current directory
COPY . /app

# Now working directory is "app"
WORKDIR /app

# Run the update in ubuntu
RUN apt update -y

# Installing the libgill-mesa-dev library
RUN apt-get install -y libgl1-mesa-dev

# Installing the tesseract-ocr -y library
RUN apt-get install tesseract-ocr -y

# Installing the tesseract-ocr-spa -y library
RUN apt-get install tesseract-ocr-spa -y

# Install the dependances from requirements.txt
RUN pip install -r requirements.txt

# Installing pytsseract
RUN pip install pytesseract

# Installing tsseract 
RUN pip install tesseract

# It will give the path for present working directory 
RUN pwd

# It will show you ead-write permission
RUN ls -lrt

Run  the python file
RUN python Read-image.py