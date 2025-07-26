"""
This is the Locust test script.
It defines the behavior of a simulated user.
"""
from locust import HttpUser, task, between

class WebsiteUser(HttpUser):
    # Wait between 1 and 5 seconds between tasks
    wait_time = between(1, 5)

    @task
    def index_page(self):
        """Simulates a user visiting the home page."""
        self.client.get("/")