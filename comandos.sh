echo "Contenedores actuales "
docker ps -a
echo "Borrando contenedores "
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
docker rmi $(docker images -a -q) --force
#docker build -t alpine_aws-cli .
echo ">>>>>>>>>>>>>>>>>>>>>>>>>>>"
docker run -v ${PWD}/vol:/root/.aws/ elmerreal98/alpine_aws-cli s3 ls
