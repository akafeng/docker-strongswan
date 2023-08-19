<h1 align="center">strongSwan</h1>

<p align="center">The open source IPsec-based VPN solution.</p>

<p align="center">
    <a href="https://ghcr.io/akafeng/strongswan">Container Registry</a> ·
    <a href="https://github.com/strongswan/strongswan">Project Source</a>
</p>

<p align="center">
    <img src="https://img.shields.io/github/actions/workflow/status/akafeng/docker-strongswan/push.yml?branch=main" />
    <img src="https://img.shields.io/github/last-commit/akafeng/docker-strongswan" />
    <img src="https://img.shields.io/github/v/release/akafeng/docker-strongswan" />
    <img src="https://img.shields.io/github/release-date/akafeng/docker-strongswan" />
</p>

---

### Pull The Image

```bash
$ docker pull ghcr.io/akafeng/strongswan
```

### Start Container

```bash
$ docker run -d \
  --volume=/etc/swanctl/conf.d/:/etc/swanctl/conf.d/ \
  --cap-add=NET_ADMIN \
  --network=host \
  --restart=unless-stopped \
  --name=strongswan \
  ghcr.io/akafeng/strongswan
```
