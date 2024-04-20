lock:
	poetry update
	poetry install
	poetry lock

serve:
	streamlit run src/app.py

lint:
	poetry run ruff check src --fix

reformat:
	poetry run ruff format src

mypy: 
	poetry run mypy src

static-analysis: reformat lint mypy