docker build -t mborejdo/docker-base -f Dockerfile .;
docker push mborejdo/docker-base;

docker build -t mborejdo/docker-rusty -f Dockerfile.rusty .;
docker push mborejdo/docker-rusty;

docker build -t mborejdo/docker-tinytex -f Dockerfile.tinytex .;
docker push mborejdo/docker-tinytex;

docker build -t mborejdo/docker-chrome -f Dockerfile.chrome .;
docker push mborejdo/docker-chrome;
