# docker-dev-api

All tools in one image to work on PHP API:
- PHP 7
- Mysql
- composer
- phpunit
- php-cs-fixer
- Sphinx with graphviz
- sami

## Usage

	docker run -ti --rm -v ${PWD}:/root -u $(id -u):$(id -g) hozana/docker-dev-api bash -c "phpunit"
