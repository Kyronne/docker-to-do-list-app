FROM python:3.8 
# Create directory for docker
WORKDIR /code
COPY . .
# Run pip install requirements to install correct modules
RUN pip install -r requirements.txt
# Expose the correct port
EXPOSE 5000
# Run 'python app.py' on container start-up.
ENV DATABASE_URI="sqlite:///data.db"
ENV CREATE_SCHEMA=true
ENTRYPOINT ["python", "app.py"]