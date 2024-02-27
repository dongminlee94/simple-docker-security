init:
	brew install golang

step1-build:
	docker build -t step1 -f docker/step1/Dockerfile .

step2-build:
	docker build -t step2 -f docker/step2/Dockerfile .

step3-build:
	docker build -t step3 -f docker/step3/Dockerfile .

step4-build:
	docker build -t step4 -f docker/step4/Dockerfile .

step5-build:
	docker build -t step5 -f docker/step5/Dockerfile .

step6-build:
	docker build -t step6 -f docker/step6/Dockerfile .
