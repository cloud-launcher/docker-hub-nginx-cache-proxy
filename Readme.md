## cloudlauncher/docker-hub-nginx-cache-proxy

Docker Hub recently removed `Access-Control-Allow-Origin: *` from their public registry API, effectively closing off the registry to CORS compliant HTTP clients.

This is an nginx container that will sit in front of Docker Hub and proxy requests from CORS compliant HTTP clients to the Docker Hub and cache the results (default 5 min) for blazing fast, repeated access to the results. Results are returned with `Access-Control-Allow-Origin: *`.


`docker run --rm -p 80:80 cloudlauncher/docker-hub-nginx-cache-proxy`

`curl http://localhost/v1/search?q=ubuntu`


This is a vanilla `nginx` image with a custom .conf applied. Override it with:

`docker run --rm -p 80:80 -v $(pwd)/your.conf:/etc/nginx/nginx.conf cloudlauncher/docker-hub-nginx-cache-proxy`