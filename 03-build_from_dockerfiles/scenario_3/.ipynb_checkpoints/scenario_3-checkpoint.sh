
docker build . -t scenario3

docker run -v $(pwd)/../data:/data scenario3 bash /code.sh
  