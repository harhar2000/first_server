# Imagine this file as a recipe for setting up a virtual computer.

# Dockerfiles typically start with a 'base image'. There are loads of these
# at hub.docker.com.
# We're going to use a base image for Python veresion 3.11
FROM python:3.11

# This base image contains everything necessary for a 'virtual
# computer'. It has a terminal, certain basic commands and Python.

# We run a command to install `pipenv`
RUN pip install pipenv

# We'll need our app's files in the container in order to run them!
# We copy them in from the current directory to the folder `/app` in
# our virtual computer. Reminder `.` means 'the current directory'
COPY . /app

# We set the working directory for commands from this point on
WORKDIR /app

# We run `pipenv install` to install our project's dependencies. Since we've
# copied in our `Pipfile`, `pipenv` will use that to get a list of dependencies.
# We include a couple of extra options suitable for deployment.
RUN pipenv install --system --deploy

# At this point we've set up our virtual computer, but we've not _yet_ run our
# application. And we're not going to! We're just setting up the container
# so that it's ready to do so when we tell it.

# So we're going to tell Docker here that when we _do_ want to run it, this is
# what it should run:
CMD ["python", "app.py"]
