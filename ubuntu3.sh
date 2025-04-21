#!/bin/bash
apt update
apt install -y python3 flask
mkdir /home/vulnapp
cat <<EOF > /home/vulnapp/app.py
from flask import Flask, request
import os
app = Flask(__name__)

@app.route("/", methods=["GET"])
def index():
    cmd = request.args.get("cmd")
    if cmd:
        return os.popen(cmd).read()
    return "Send a cmd param to run shell commands!"

app.run(host="0.0.0.0", port=8080)
EOF

nohup python3 /home/vulnapp/app.py &

