FROM python:2

EXPOSE 8080

COPY hostname.py /hostname.py
CMD ["python", "/hostname.py"]
