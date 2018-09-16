Build image

```
docker build --tag ml_course:1.0 .
```

Run docker

```
docker run -d -p 6006:6006 -p 8888:8888 --volume "$(pwd)"/notebooks:/app/notebooks  ml_course:1.0
```
