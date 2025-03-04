build-and-push:
	docker build -t ghcr.io/martabal/ollama-intel-gpu:$(shell git describe --tags --abbrev=0) .
	docker push ghcr.io/martabal/ollama-intel-gpu:$(shell git describe --tags --abbrev=0)
