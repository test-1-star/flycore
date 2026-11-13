FROM ubuntu:alpine

# Set the working directory to /app
WORKDIR /app

# Copy the requirements file and install the dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy the application code
COPY . .

# Expose the port that the Flask app will run on
EXPOSE 5000

# Run the command to start the Flask app when the container starts
CMD ["flask", "run", "--host=0.0.0.0"]