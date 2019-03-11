# CloudFlare Argo Tunnel Docker image

Docker image for setting up an Argo Tunnel for your services.

## Usage

To expose your service on *$SERVICE_URL* using domain *SERVICE_HOST*

- Fetch [Certificate](https://cloudflare.com/a/warp) and save to project root.
- Build image `docker build -t argo-tunnel .`.
- Run `docker run -e SERVICE_URL=$SERVICE_URL -e SERVICE_HOST=$SERVICE_HOST -it argo-tunnel:latest`.