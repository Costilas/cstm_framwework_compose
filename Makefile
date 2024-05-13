CONTAINER_NAME=framework-php-fpm-1
WORKDIR=/var/www/html/app

exec:
	docker exec -w $(WORKDIR) $(CONTAINER_NAME) $(COM)

composer:
	docker exec -w $(WORKDIR) $(CONTAINER_NAME) composer install --dev

build: remove
	docker-compose up -d --build

remove:
	docker-compose down

start:
	docker-compose up -d

stop:
	docker-compose stop