# Install these 

**Type**: Individual

In case the list is overwhelming and time is sparse I have split it into things that you must have done before week 1 and things that you can do later.

---

## Must do before week 1


#### Editor / IDE

Have an editor / IDE ready (including renewing licenses). You are free to use any editor during the course. I will use VSCode but it has very little significance for the lectures. 


#### Ensure that you can run `ssh` in your terminal

Run `ssh` in your terminal. If you get a message that it is not installed then you need to install it or use a different terminal. This is needed already for the first lecture!


### Windows users only

Install `Chocolatey`: https://chocolatey.org/

Don't use CMD. 

Install `Windows subsystem for Linux`: https://learn.microsoft.com/en-us/windows/wsl/install

Make sure that you can actually run it. If you have Docker installed prior to it then it will try to launch in Docker and fail. This is the solution to that problem:

https://stackoverflow.com/questions/75157946/wsl-failed-to-initialize-on-windows-11


#### Make sure you can run Python

Python comes preinstalled on all operating systems but make sure that you can run Python on your computer. 

You might need to run this on Windows in an admin Powershell terminal to run Python. 

```powershell
$ Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy Unrestricted
```


### Mac users only

Install homebrew: https://brew.sh/

Video guide on how to download for Macbook M1 or newer: https://youtu.be/Qvfvj-UCJuQ?t=55

---

#### Try out your package manager

Now that you have `homebrew` or `chocolately` installed see if you can install Python 2:

```bash
$ brew install python
```

```powershell
$ choco install python2
```

---

## Must do before week 3

You can do the following before the semester start or later on. Once the semester start there are many assignments of higher priority so consider postponing this section.

#### GitHub Student Developers Pack

Check the GitHub Student Developers Pack: https://education.github.com/pack. For instance, you can get some credit for DigitalOcean as an alternative to Azure.

There are benefits to getting a GitHub Pro account. 


#### Azure

Set up or renew your Azure for students account. Look into Azure for Students where you will get free credit.

https://azure.microsoft.com/en-us/free/students/

[Guide with screenshots](./how_to_renew_azure_for_students/how_to_renew_azure_for_students.md)


#### SSH keys

Many of you generated a SSH key pair last semester. If you have lost it then generate a new one. Generate a RSA key pair. Specifically, RSA, will be required for Terraform later in the course.

---

## Must do before week 4

#### Install Postman and create account

https://www.postman.com/

Create an account. We will be using features that require the non-lightweight version as they call it. You can use a throwaway email to signup. 


#### Install Node.js. 

Install Node.js: https://nodejs.org/en/download

Both LTS (long-time support) or Current are fine. 

Verify that you have Node.js installed. 

```bash 
$ node --version
```

#### Docker

Have Docker Desktop installed and be ready to work with Docker. Success criteria: Can run `docker --version` in the teminal. 

Install Docker: https://www.docker.com/products/docker-desktop/.


---

## Can do before week 10

#### `az` (Azure CLI)

Install Azures CLI `az`. Look here to find how to install it for your OS:

https://learn.microsoft.com/en-us/cli/azure/install-azure-cli

OR a perhaps a better command to install for Windows here:

https://developer.hashicorp.com/terraform/tutorials/azure-get-started/azure-build

Successful criteria: Can run `az --version` in the terminal that you use. So if you install it for Powershell but always use Git Bash for instance, then you might consider a different installation method.

#### Terraform

Install Terraform:

https://developer.hashicorp.com/terraform/install?product_intent=terraform

---

## Optional

#### Sqlite3 CLI

There is an SQLite3 CLI that you can install. It will allow you to interact with Sqlite databases from the terminal.


<!-- #### Install Poetry

Still unsure if this will be used in the course so this is very optional for now.

https://python-poetry.org/docs/main/ -->



