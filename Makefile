KATANA_VERSION=0.3.2
MYSQL_DATABASE=katana
MYSQL_PASSWORD=root

build:
	docker build -t katana:$(KATANA_VERSION) .

start:
	docker run -d -e MYSQL_DATABASE=$(MYSQL_DATABASE) -e MYSQL_ROOT_PASSWORD=$(MYSQL_PASSWORD) --name katana-mysql mysql:5.6
	docker run -d -p 8080:80 --link katana-mysql:db --name katana katana:$(KATANA_VERSION)

stop:
	docker rm -f katana
	docker rm -f katana-mysql
