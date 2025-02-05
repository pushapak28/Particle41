from flask import Flask, request
from datetime import datetime

app = Flask(__name__)

@app.route('/')
def simple_time_service():
    # Get the current timestamp
    timestamp = datetime.now().strftime('%Y-%m-%d %H:%M:%S')

    # Get the IP address of the visitor
    ip_address = request.remote_addr

    # Return the response as JSON
    return {
        "timestamp": timestamp,
        "ip": ip_address
    }

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
