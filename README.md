# blog
A blog extension of my personal site at josemarquez.tech

### Developing The Blog with Docker
If the container hasn't been built yet, build with `docker build . -t <preferred_name:tag>`.
Once the container is built (it's a full on ruby environment, not just jekyll so it can take a
minute), run the container with the current working directory mapped to `/blog` like so:
```
docker run -it \
  --volume="$PWD:/blog" \
  -p 4000:4000 <preferred_name:tag>
```
The container will not remove itself after it's stopped, to enable this add the `--rm` flag.

**Alternately:**
- Build: `docker build -t <preferred_name> -f Dockerfile .`
- Run: `docker run --name <preferred_name> --mount type=bind,source=$(pwd),target=/blog -p 4000:4000 -it <preferred_name>`
