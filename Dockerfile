FROM shabbirmahmud/aimmlbot:latest

WORKDIR /usr/src/app

COPY requirements.txt .

RUN python3 -m venv /venv
ENV PATH="/venv/bin:$PATH"

RUN pip install --upgrade pip setuptools wheel
RUN pip install -r requirements.txt

COPY . .

CMD ["bash", "start.sh"]
