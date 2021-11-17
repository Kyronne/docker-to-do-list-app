# Python base image
FROM python:3.8 
# Create directory for docker
WORKDIR /code
# Copy files from the present directory to /code
COPY . .
# Run pip install requirements to install correct modules
RUN pip install -r requirements.txt
# Expose the correct port
EXPOSE 5000
# Set enviromental variables
ENV DATABASE_URI="sqlite:///data.db"
ENV CREATE_SCHEMA=true
# Run 'python app.py' on container start-up
ENTRYPOINT ["python", "app.py"]
