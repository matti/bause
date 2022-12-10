# bause

An actually useful pause container.

```console
docker run ghcr.io/matti/bause:root
```

Runs as root (aliased as :latest)

```console
docker run ghcr.io/matti/bause:user
```

Runs as non-root

```console
docker run ghcr.io/matti/bause:hang
```

Runs as root, does not respond to SIGTERM (great for testing)
