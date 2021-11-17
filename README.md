# Docker To-Do-List-App

Docker file to create a working containerised version of To-Do-List app, source code for the To-Do-App is here: https://github.com/htr-volker/todo-list-v2

## Overview

Containerise using:

docker build -t to-do-list .

Run using: 

docker run -d -p 5000:5000 --name to-do-list to-do-list


