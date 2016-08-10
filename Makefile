.PHONY: clean keygen build run

clean:
		rm ssh_keys/*

keygen:
		ssh-keygen -t rsa -b 4096 -C "deployer@example.com" -f ssh_keys/deployer

build:
		docker build . -t robmorgan/jenkins2

run:
	 	docker run -ti -p 8080:8080 -p 50000:50000 robmorgan/jenkins2
