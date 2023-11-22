.PHONY: all

start:
	docker-compose up -d

infra:
	docker-compose up -d mockserver postgres

stop:
	docker-compose down

logs:
	docker-compose logs

swagger:
	open http://localhost:8080/simple-crud/swagger-ui/index.html

mockserver:
	open http://localhost:1080/mockserver/dashboard

colima:
	colima start --cpu 2 --memory 8 --disk 30 --mount-type 9p
