Build image

```
docker build --tag ml_course:1.0 .
```

Run docker

```
docker run -d -p 6006:6006 -p 8888:8888 --volume "$(pwd)"/notebooks:/app/notebooks  ml_course:1.0
```

For windows please try use `cd` instead of `pwd` or replace `"$(pwd)"` by absolute path to the folder `notebooks` in the repository.

For getting the running containers
```
docker ps
```

Stop container
```
docker stop CONTAINER_ID
```
