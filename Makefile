install:
	. venv/bin/activate &&\
	pip install --upgrade pip &&\
		pip install -r requirements.txt
lint:
	. venv/bin/activate &&\
	pylint --disable=R,C hello.py
test:
	. venv/bin/activate &&\
	python -m pytest -vv --cov=hello test_hello.py
black:
	. venv/bin/activate &&\
	black *.py