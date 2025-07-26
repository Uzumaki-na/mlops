"""
This is the main web application file using Flask.
"""

from flask import Flask

# Create a Flask app instance
app = Flask(__name__)


def add(x, y):
    """Returns the sum of two numbers."""
    return x + y


@app.route("/")
def hello():
    """Main endpoint to return a greeting."""
    # We can still use our add function
    sum_result = add(2, 3)
    return f"Hello from my_app! The sum is {sum_result}"


# This part is no longer needed for a production server like gunicorn
# if __name__ == "__main__":
#   app.run(host='0.0.0.0', port=5000)
