# Simple Server Project

To set up this project.

```bash
; pipenv install
; pipenv shell
; pytest           # Run the tests
; python app.py    # Run the server
```

Welcome to my Simple Server project! This project is a very basic demonstration of setting up a server that responds with "Hello, world!" on a web page. The main goal of creating this server was to learn the fundamentals of web development and understand how a server interacts with incoming requests.

## Why I Created It

As a beginner in the world of web development, I wanted to start with the most basic building block of the internet — a simple server. This project served as my first step into understanding how web servers operate, how they handle requests, and how they can send responses back to clients. It was an exercise in applying knowledge into practical application.

## What It Does

The server is set up to listen for incoming HTTP requests. When a request is received, it responds with a plain text message saying "Hello, world!". This encapsulates the core functionality of what web servers do — receive requests and send responses.

## How It Works

The server is written in Python using the Flask framework, a micro web framework designed for building web applications quickly and with ease. Here is a brief overview of the server's functionality:

- **Flask App Creation**: A Flask app is created to handle incoming requests.
- **Route Definition**: A route (URL path) is defined for the root ("/") of the server. When this route is accessed, the server responds with "Hello, world".
- **Server Execution**: The server is set to run on all available IP addresses of the host machine, making it accessible from other devices on the same network.

## Deployment

The server is deployed using Exoframe, a tool that simplifies the deployment of applications. Exoframe allows for the server to be containerized and run in a cloud environment, making it accessible from anywhere with an internet connection. The deployment process involves configuring Exoframe, logging in to the Exoframe server, and deploying the app.

If you want to clone it to play around - you will need to generate your own key. 

### Generating an SSL Certificate

1. Open a terminal or command prompt.
2. Use OpenSSL to generate your own SSL certificate:

## Conclusion

This simple server project might not have many practical applications, but it's a significant first step in my journey as a web developer. It has helped me understand the basics of server-side programming and deployment, laying the groundwork for more complex projects in the future.
