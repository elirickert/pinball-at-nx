docker build -t mpf-image .
docker run -it --rm -p 8000:8000 -v ${PWD}\your_machine:/mpf mpf-image bash
