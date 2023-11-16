FROM python:3.11

WORKDIR /src

COPY . .
RUN python -m pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

CMD ["bash"]
