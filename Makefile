up:	do own nginxpermission chmod 


do:
	docker exec customframework_php-fpm_1 $(COM)

own:
	docker exec customframework_php-fpm_1 chown 1000:1000 -R ./

nginxpermission:
	docker exec customframework_php-fpm_1 chown 1000:1000 -R ./

chmod:
	chmod 777 -R ./


