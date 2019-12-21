# gatsbyjs-docker

Docker image for running and building GatsbyJS pages.

The image `pirobtumen/gatsbyjs` is built using *Dockerfile*.


## Development using gatsbyjs-docker

The file *gatsby.dev.Dockerfile* is an example of *Dockerfile* that can be used in development. 
Copy that file into your project and run the command:

```
$ docker build -f gatsby.dev.Dockerfile --tag gatsby-dev .
$ docker run --rm -it -p 8000:8000 gatsby-dev
```

Now you can access [http://localhost:8000](http://localhost:8000) and you'll see your app.

You can mount the `src` folder to keep **live reloading**:

```
$ docker build -f gatsby.dev.Dockerfile --tag gatsby-dev .
$ docker run --rm -it -p 8000:8000 -v "/home/<user>/<project>/src:/app/src" gatsby-dev
```

> Tip: you can use `docker-compose` to make the run process much simpler.


## Contribute

If you need to update some version, or you need to install some library to add support to some 
GatsbyJS plugin, feel free to open a Pull Request 😎
