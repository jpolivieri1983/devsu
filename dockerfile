# Using the official Python 3.10 image as the base image
FROM python:3.12.0 

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file to the working directory
COPY requirements.txt .

# Install the Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

#Migrate database
RUN py manage.py makemigrations
RUN py manage.py migrate

# Copy the rest of the application code to the working directory
COPY . .

# Expose the port on which the Flask app will run
EXPOSE 8000

# Specify the command to run the application
#CMD [ "python", "app.py" ]
#CMD [ "python", "manage.py test" ]
CMD [ "python", "manage.py runserver" ]

#ENTRYPOINT [ "yarn", "start:prod" ]
