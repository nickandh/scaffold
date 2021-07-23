install:
	pip3 install --upgrade pip &&\
    	pip3 install -r requirements.txt
    	
format:
	black *.py
	
lint:
	pylint --disable=R,C hello.py
	
test:
	python3 -m pytest -v  --cov=hello test_hello.py
	