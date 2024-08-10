Dockerfile
FROM python:3.9-slim-buster

WORKDIR /app

# Clone the Great Expectations repository
RUN git clone git@github.com:thanhbui221/great_expectations.git

# Install dependencies
WORKDIR /app/your-great-expectations-repo
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

# Expose the port for the dashboard (optional)
EXPOSE 5000

# Command to run the Great Expectations dashboard
CMD ["great_expectations", "dashboard", "--port", "5000"]