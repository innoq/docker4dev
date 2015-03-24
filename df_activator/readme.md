This image provides a Dockerized development environment for Typesafe Activator. It can be used via the scripts provided in the top directory:

First use 'build.sh' to to create a new image with the current version of the Activator and place it in your local Docker repository. It does not require any parameters, so if you are ok with default name of 'jpreissler/activator' just run it and be done. When a new version of the Activator is release, simply re-run the script to update your local image.

Note: The build.sh script uses jq (https://github.com/stedolan/jq) as a lightweigth JSON parser to extract the location of the current Activator version. On Debian and Ubuntu it is available via apt-get.

Now you can start working with projects using this image. For this purpose the script 'd.activator' is provided. Just put this on your path and use the following steps to get up and running:

1. Create a new directory with two sub-directories 
  * 'projects' will hold any projects that you create. You might want to put it under version control using tools installed on your host since the Docker container does not contain provisions for that (yet?).
  * 'cache' will hold all cached dependencies in various hidden sub-directories. Its contents can be safely scrubbed if you feel like it, they will be re-downloaded as needed.
2. Change to the new directory and create your first project:
  * ```d.activator --new```
3. Choose a name and template for the new project when prompted.
4. Start up the shell for new project:
  * ```d.activator {projectname}```

Perhaps the quickest way to check if things are working correctly is to choose the play-scala template first and enter the command 'run' when you have started the shell. d.activator exposes port 9000 from the container to your host, so if you open a browser on http://localhost:9000, you should be greeted with the initial play project page once all downloads and compiles have finished.
