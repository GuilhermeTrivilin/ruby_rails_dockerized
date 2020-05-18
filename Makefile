# DOCKER BUILD - BUILDAR UMA IMAGEM NO DOCKER COM O NOME DO PROJETO, O PONTO É PARA ADD TODAS AS PASTAS
# MAS POSSO COLOCAR UM CAMINHO ESPECÍFICO

build:
	docker build -t project_name_rails .

# DOCKER-COMPOSE RUN - INICIA A CONFIGURAÇÃO NECESSÁRIA, NESSE CASO A CONFIGURAÇÃO DO RAILS

init:
	docker-compose run project_name_rails rails new project_name_rails -d mysql

# DOCKER-COMPOSE UP - INICIA O PROJETO

up:
	docker-compose up