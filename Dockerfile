
FROM ubuntu:latest


# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app
RUN apt-get -y update
RUN apt-get -y dist-upgrade
#install python
RUN apt install -y python3-pip
#install venv
RUN pip3 install virtualenv

#create & activate venv
RUN virtualenv venv 
RUN . venv/bin/activate
#
COPY requirements.txt /tmp/
RUN pip3 install --requirement /tmp/requirements.txt
# install jupyter
CMD jupyter notebook --port=8888 --no-browser --ip=0.0.0.0 --allow-root
# install git
RUN apt-get -y install git-core

# Credential git
RUN git config --global user.name root
RUN git config --global user.password toor

