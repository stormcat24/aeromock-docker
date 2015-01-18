aeromock-docker
===================

# Aeromock in Docker

[Aeromock](https://github.com/CyberAgent/aeromock) is Lightweight mock web server on JVM. This docker image was made for starting up Aeromock quickly.

# Usage

## Run
Listening port of Aeromock is 3183. Do port mapping 3183(Optional) to 3183.

```
$ docker run -t -i -p 3183:3183 -v /aeromock_dir:/project stormcat24/aeromock
```
