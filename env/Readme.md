#Build the docker container:

sudo docker build -t clang_9_env .


#Then instance the container to use the tools inside it:

sudo docker run --rm -it -v "$PWD":/tmp -w /tmp clang_9_env

#When done run:

exit