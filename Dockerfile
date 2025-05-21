FROM python:3.6-slim
RUN pip install maxsoft-extent-reporter==3.1.2
WORKDIR /maxsoft/tests
CMD ["maxsoft", "--outputdir", "/maxsoft/results", "."]
