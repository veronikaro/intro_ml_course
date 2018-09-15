Build image

```
docker build --tag ml_course:1.0 .
```

Run docker

```
docker run --rm -d -p 6006:6006 -p 8888:8888 ml_course:1.0
```
