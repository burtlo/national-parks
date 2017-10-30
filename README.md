# National Parks

## Build the database (Habitat)

```
$ hab studio enter
[1][default:/src:0]# build mongodb
```

## Run the database (Habitat)

```
[2][default:/src:0]# hab sup start results/origin-mongodb-3.2.9-TIMESTMAP.hart
```

## Build the application (Habitat)

```
$ hab studio enter
[1][default:/src:0]# build
```

## Run the application (Habitat)

```
[2][default:/src:0]# hab sup start results/origin-national-parks-0.1.0-TIMESTMAP.hart --peer 127.0.0.1 --bind database:mongodb.default
```

Visit http://localhost:8080/national-parks

> To proxy this port outside the studio you will need to run:
>
> $ export HAB_DOCKER_OPTS="-p 8080:8080"


## Build and Run (Docker Compose)

```
$ hab studio enter
[1][default:/src:0]# build
[2][default:/src:0]# hab pkg export docker results/origin-national-parks...
[3][default:/src:0]# build mongodb
[4][default:/src:0]# hab pkg export docker results/origin-mongodb...
[5][default:/src:0]# exit
$ docker-compose up
```
