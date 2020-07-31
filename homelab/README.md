# homelab

Some of my basic config files used within my homelab.

## docker-compose

Current Use Case: Ubuntu VM running Portainer

For each physical ESXi server, I have one dedicated VM running Portainer to
manage all services and projects as containers. If I ever need to bring up
a new container, I just add to the `docker-compose.yml` file and run `$
docker-compose up -d` to bring the new service online.

Example Workflow:

```
ssh adam@port-01
cd port-01/
vim docker-compose.yml # make required changes
docker-compose up -d # build new container(s)
# open Portainer dashboard to confirm new service
```

