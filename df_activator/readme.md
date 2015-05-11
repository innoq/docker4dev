This image provides a Dockerized development environment for Typesafe Activator. It can be used via the scripts provided in the top directory:

First use 'build.sh' to to create a new image with the current version of the Activator and place it in your local Docker repository. It does not require any parameters, so if you are ok with default name of 'jpreissler/activator' just run it and be done. When a new version of the Activator is release, simply re-run the script to update your local image.

Note: The build.sh script uses jq (https://github.com/stedolan/jq) as a lightweigth JSON parser to extract the location of the current Activator version. On Debian and Ubuntu it is available via apt-get.

Now you can start working with projects using this image. For this purpose the script 'd.activator' is provided. This script should work just as the original script that is provided. Just put this on your path and use the following steps to get up and running:

1. Select a directory to hold locally cached dependencies. If you want to use the default of $HOME/cache, you just need to create this dir and you are done. If you want to use another directory, specify the location in the environment variable CACHE_DIR. If you don´t want to use a cache directory, all dependencies will be transient and will be downloaded whenever you use a container that is created from the activator image.
2. Change to the directory where you keep your projects and create your first project:
  * ```d.activator new [project-name] [template-name]```
  (If you are unsure about the available templates, just run ```d.activator list-templates```)
3. Change to the newly created project dir and start the activator shell with ```d.acticator```
4. Enjoy

Perhaps the quickest way to check if things are working correctly is to choose the play-scala-intro template first and enter the command 'run' when you have started the shell. d.activator exposes port 9000 from the container to your host, so if you open a browser on http://localhost:9000, you should be greeted with the initial play project page once all downloads and compiles have finished.
