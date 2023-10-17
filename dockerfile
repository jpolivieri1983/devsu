# Using the official Python 3.12 image as base image
FROM python  

# Set the working directory inside the container
WORKDIR /app

# Copy app code to the working directory
COPY . /app

# Install the Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Migrate database actions
RUN python manage.py migrate

#Define environment variables
ENV DJANGO_SETTINGS_MODULE="./demo/settings.py"
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Expose the port on which the app will run
EXPOSE 8000

# Run the app
CMD [ "python", "manage.py", "runserver", "0.0.0.0:8000" ]
