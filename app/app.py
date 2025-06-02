from flask import Flask, render_template
from redis import Redis

app = Flask(__name__)
redis = Redis(host='redis', port=6379)

@app.route('/')
def home():
    count = redis.incr('visits')
    return render_template('index.html', count=count)

@app.route('/test')
def test():
    return "This is a test page!"

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000)
