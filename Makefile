all: build install pull

stack:
	@docker build --tag=127.0.0.1:5000/lfmc-proxy .
	@docker push 127.0.0.1:5000/lfmc-proxy

build:
	@npm install --no-optional
	@docker build --tag=anthonyrawlinsuom/lfmc-proxy .

install:
	@docker push anthonyrawlinsuom/lfmc-proxy
	
pull:
	@docker pull anthonyrawlinsuom/lfmc-proxy
	
release:
	./release.sh

clean:
	@docker rmi --force anthonyrawlinsuom/lfmc-proxy