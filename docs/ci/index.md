# How to work with Leva

The Dockerfile `Dockerfile.leva` contains the necessary dependencies to reduce the amount
of additional downloads and configuration from a runner to accelerate the overall execution
time of a CI job

To build the image for local use:

```
docker build -t leva -f Dockerfile.leva .
```

**Note: This is from the project root**

The scripts folder in the root of the app contains scripts to facilitate the installation
of dependencies that are not normally available in the repositories of the selected flavor
of linux for the Docker image

