# LYT - docker

This is the containerization of [LYT](https://github.com/Notalib/LYT).

## Building

Building the container is done as a multi-stage build where the artefact
present in `/lyt/build` is copied into the image for the container running the
webserver.

```
docker build -t lyt .
```

## Configuration

None at the moment.
