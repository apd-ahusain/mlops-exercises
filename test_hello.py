import hello
import pytest

testdata = [(4, 5), (6, 10), (9, 234)]

@pytest.mark.parametrize("a, b", testdata)
def test_hello(a, b):
    assert hello.adding_something(a, b) == a + b