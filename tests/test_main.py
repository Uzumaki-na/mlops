"""
Tests for the main application.
"""

from my_app.main import add


def test_add():
    """Tests the add function."""
    assert add(2, 3) == 5
    assert add(-1, 1) == 0
