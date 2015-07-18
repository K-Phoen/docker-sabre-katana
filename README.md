docker-sabre-katana
===================

Docker image providing a [sabre/katana](https://github.com/fruux/sabre-katana)
instance.


## Running it

```bash
docker run -d -p 8080:80 --name kphoen/sabre-katana
```

But you probably want to store your data outside the container:

```bash
docker run -d -p 8080:80 -v $(pwd)/data:/var/www/html/data --name kphoen/sabre-katana
```

## License

MIT
