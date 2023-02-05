# Docker Container for Media Server
This docker container is used to process `.ts` files by default to a standard h265 format to save disk space and retain quality. The container loops every 5 minutes to look for new files and will rest for 5 minutes after completing each file. Additionally, the container will ignore any `.grab` folders for Plex and any folder renamed to contain `_dnc` will also be ignored. This is to avoid wasting conversion time on something that will be deleted anyways. For example a news cast or something that you only retain for a couple days vs something more permanent. 

## Basic Usage
1. Pull the files and modify the file type to be processed in the `entrypoint.sh`to suit your needs.
2. Build the image with `docker build -t yourimagename .`
3. Run the container with the following command:
    ```
    docker run -d --name transformer_ts \
                             --user 115:125  \    
                             -v /DATA/TV:/media \
                              yourimagename:latest
    ```
    Additionally, you can add `--cpus=<value>` to the docker run command to make it more of a background process.

## Contributing
Contributions are welcome to improve the project
