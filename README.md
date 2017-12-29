# Deployment

⚠️🔮 _need to work on a smoother flow here, but this is working_

1. Build tarball (distillery release) in Docker container

   ```
   docker build ./ -t mr-build -f Dockerfile.build
   ```

1. Create a container of that build (not sure this is exactly what this step does...) which will spit out a long hash string [HASH]

   ```
   docker create mr-build:latest
   ```

1. copy stuff from container to host filesystem

   ```
   docker cp [HASH]:app/\_build ./dump
   ```

1. Manually go into finder and move `./dump/_build/prod/rel/mr/bin` and `./dump/_build/prod/rel/mr/releases/0.0.1/mr.tar.gz` to the root this directory

1. Deploy to now, which uses `Dockerfile`

   ```
   now
   ```

1. Do aliasing.

---

# Mr

To start your Phoenix server:

* Install dependencies with `mix deps.get`
* Install Node.js dependencies with `cd assets && npm install`
* Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

## Learn more

* Official website: http://www.phoenixframework.org/
* Guides: http://phoenixframework.org/docs/overview
* Docs: https://hexdocs.pm/phoenix
* Mailing list: http://groups.google.com/group/phoenix-talk
* Source: https://github.com/phoenixframework/phoenix
