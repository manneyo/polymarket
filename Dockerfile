FROM python:3.11-slim

WORKDIR /app

# Copy requirements first (better Docker caching)
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy rest of the app
COPY . .

CMD ["python", "fastloop_trader.py"]
