# Begin Dockerization

Dockerize backend / frontend.

**Type**: Group work

---

## Start Dockerization

This assignment is for experimenting with how to Dockerize the language of your choosing. Create a new branch and play around with it. Next week you will build upon this task with `Docker-compose`.

Depending on if the frontend is served by the backend you might end up with 1 or 2 separate containers for the application.

---

## The Database Problem

The goal after next week is to publish the images to a public registry. Because it has to be public, it disallows you to include the SQLite database in the image.

You must figure out how to securely get the file on the production server and use it without leaking it to the public.

There are many ways to approach this interesting problem. Discuss it well with your group and consider the pros and cons of each approach.

