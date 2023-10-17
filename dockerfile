# Using the official Python 3.12 image as base image
FROM python:3.12.0 

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file to the working directory
#COPY requirements.txt ./

# Install the Python dependencies
#RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the app code to the working directory
#COPY . ./
COPY . /app

# Install the Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Migrate database actions
#RUN py manage.py makemigrations
#RUN py manage.py migrate
#RUN python manage.py makemigrations
#RUN python manage.py migrate
#RUN python manage.py test
#RUN python manage.py runserver

#Define environment variable
#ENV NAME World

# Expose the port on which the app will run
EXPOSE 8000

# Run the app
#CMD [ "python", "manage.py test" ]
#CMD [ "python", "manage.py runserver" ]  
#CMD ["hello.py" ]  
CMD [ "manage.py" , "runserver" ] 

ENTRYPOINT ["python"]

