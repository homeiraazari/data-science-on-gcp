FROM python:3.7.3-stretch

# Working Directory
WORKDIR /data-science-on-gcp

# Copy source code to working directory
COPY . app.py /data-science-on-gcp/

# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirements.txt