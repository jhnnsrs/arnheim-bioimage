FROM jhnnsrs/arbeider:java
LABEL maintainer="jhnnsrs@gmail.com"

# Install Minimal Dependencies for Django
#COPY requirements.txt /tmp
#WORKDIR /tmp
#RUN pip install -r requirements.txt

# Install Modules
ADD importer /code/importer
ADD bioconverter /code/bioconverter
ENV ARNHEIM_MODULES importer,bioconverter
