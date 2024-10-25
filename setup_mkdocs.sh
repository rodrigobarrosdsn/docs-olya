#!/bin/bash

# Ativa o ambiente virtual
. env/bin/activate

# Navega até o diretório da documentação
cd olya-api-docs

# Instala as dependências necessárias
pip install mkdocs mkdocs-material pymdown-extensions

# Inicia o servidor do MkDocs
mkdocs serve
