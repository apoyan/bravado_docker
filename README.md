# development env using docker

```
cd projects
git@github.com:apoyan/bravado_docker.git
mkdir shared
cd bravado_docker
ln -s ../shared ./shared

# create links to all projects or clone them directly here

ln -s path/to/bravado_rails   ./rails
ln -s path/to/bravado_autocomplete ./sinatra

# docker-compose build rails
# docker-compose build sinatra

docker-compose up
```