---
title: Using Docker (Post-Workshop)
---

#### Background

You will continue to have access to RStudio Server and the files in your home directory for 6 months following this workshop.
We recognize there may be circumstances where you will need to process files locally.
Running the same software that we use for training locally can be challenging, particularly for Windows users.
(Some tools we use during our training modules, like Salmon, are not supported on Windows.)

Docker is software that allows us to package a computing environment such that it can be fully reproduced between different computers and operating systems; it is sometimes referred to as a "lightweight virtual machine."
We have put together a Docker image with the same software dependencies we use in training on the RStudio Server.
The image we use will allow you to access an RStudio Server in your local container via your web browser.

#### Docker installation

You can find instructions for installing Docker on Mac OS or Windows 10 Pro [here](../docker-install/INSTALLATION-INSTRUCTIONS.md).
_Note: Windows Home has only recently become supported and requires different steps than what is linked above ([Docker documentation](https://docs.docker.com/docker-for-windows/install-windows-home/))._

#### Obtaining the Docker image

Once you've installed Docker and Kitematic, you will need to pull the appropriate image using command line.

- In *Mac*, search for and open `Terminal`.
- In *Windows*, search for and open `Command Prompt`.

In your respective command line interface, copy and paste the following:

```
docker pull {{site.docker_user}}/{{site.docker_repo}}:{{site.docker_tag}}
```

#### Running and interacting with the container

To run the container, change the `<PASSWORD>` in the line below to whatever you'd like.

```
docker run -e PASSWORD=<PASSWORD> -p 8787:8787 {{site.docker_user}}/{{site.docker_repo}}:{{site.docker_tag}}
```

**To work with files on your computer, you will need to set a local folder as your volume.**
It is important to note that anything that you save to the Docker container but not in a local folder is ephemeral - once you destroy the container, it disappears!

First, open `Kitematic` - you should see an image running. Docker assigns a random name to your container. In the example below: "stoic_lamport".
If you don't see a container running, try quitting `Kitematic` and then opening it up again, or going to the toolbar > `View` > `Refresh Container List`.
<br><br>
<img src = "../docker-install/screenshots/container_running.png" width = "750"> <br><br>

Navigate to  `Settings` > `Volumes` > Set local folder to the using the `CHANGE` button.<br><br>
<img src = "../docker-install/screenshots/all-02-volume.png" width = "750"><br><br>

*For Windows*: After you set `Volumes` you will may see a message in the lower right corner of your screen that asks if you would like to 'Share it' with Docker.
Click the `Share it` button; it will ask for your credentials. Enter your password and click `OK`.
<br><br>
<img src = "../docker-install/screenshots/docker_permission_windows.png" width = "250"> <br><br>

Now, navigate to RStudio window.

  - In a *Windows* or *Mac* in Kitematic, go to the `Settings` > `Hostname/Ports` tab and click on the blue lettering.
<br><br> <img src = "../docker-install/screenshots/all-01-network.png" width = "750"> <br><br>

  - Alternatively, for a *Mac*, you can navigate to the RStudio window by typing `localhost:8787` in your web browser

Log into RStudio. The username will be `rstudio` and the password will be whatever you selected above.
(Your password can also be accessed from the `Settings` > `General` panel in Kitematic if you forget!)

You should see a `kitematic` folder in your RStudio `Files` panel.
When you click on it, you should see the contents of the local folder you connected above.
Saving any files outside of the `kitematic` folder is strongly discouraged, as they will disappear once you've destroyed the container.
