from flask import Flask, jsonify
from datetime import datetime
import pytz

app = Flask(__name__)

@app.route('/current-datetime')
def get_current_datetime():
    """
    API endpoint to return current date and time in multiple timezones
    """
    now = datetime.now()
    return jsonify({
        'utc_datetime': datetime.now(pytz.UTC).isoformat()
    })

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
