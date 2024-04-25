# Projeto de Testes Automatizados com Robot Framework

Este projeto consiste em um caso de estudo utilizando o site [Bug Bank](https://bugbank.netlify.app/) para a criação e execução de testes automatizados utilizando o Robot Framework.

## Como utilizar o projeto

### Clonar o projeto
Para clonar o projeto para sua máquina local, utilize o seguinte comando:
```bash
git clone https://github.com/seu-usuario/seu-projeto.git
```

### Instalar o Python
Certifique-se de ter o Python instalado. Você pode baixar e instalar o Python em [python.org](https://www.python.org/downloads/).

### Instalar o Robot Framework
Você pode instalar o Robot Framework usando o pip, o gerenciador de pacotes do Python:
```bash
pip install robotframework
```

### Instalar a Selenium Library
Para instalar a biblioteca do Selenium para o Robot Framework, utilize o seguinte comando:
```bash
pip install --upgrade robotframework-seleniumlibrary
```

### Instalar qualquer dependência
O comando padrão para instalar qualquer dependência Python é:
```bash
pip install nome-da-dependencia
```

## Estrutura do Projeto
Os testes estão separados em duas pastas:

1. **resources**: Contém arquivos de recursos, como variáveis globais, arquivos de configuração, etc.
2. **tests**: Contém os arquivos de teste propriamente ditos.

Os testes foram elaborados com base na análise da aplicação para identificar os pontos críticos que devem ser testados a cada nova implementação de features.
