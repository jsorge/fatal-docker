This project exists to figure out how to get failures while `swift test` is running inside
of a container to propagate to the `docker` command which spawned it. I want the end
result to be that the `docker build` command exits with a status code of 1.

Current state:

* `swift test` exits with an exit code 1 because of a fatal error (the test target won't
build).
* `docker build .` exits with a code 0 while running `swift test` as its `CMD`.