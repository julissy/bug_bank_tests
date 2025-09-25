# Projeto de Testes Automatizados com Robot Framework

Este projeto foi criado para auxiliar no tutorial QA Experience idealizado pela Pyladies Fortaleza. Ele consiste em um caso de estudo utilizando o site [Bug Bank](https://bugbank.netlify.app/) para a criação e execução de testes automatizados utilizando o Robot Framework.

## Estrutura do Projeto

Os testes estão organizados nas seguintes pastas:
- resources/: Arquivos de recursos, como variáveis globais e configurações.
- tests/: Arquivos de testes automatizados.

## Como utilizar o projeto

### 1. Clonar o repositório
```bash
git clone https://github.com/julissy/bug_bank_tests.git
```

### 2. Instalar dependências
Certifique-se de ter o Python instalado ([download aqui](https://www.python.org/downloads/)).
Instale o Robot Framework e a biblioteca Selenium:
```bash
pip install robotframework robotframework-seleniumlibrary
```

Baixe o WebDriver compatível com o navegador que deseja utilizar:
- Chrome: [Chrome WebDriver](https://sites.google.com/a/chromium.org/chromedriver/downloads)
- Firefox: [GeckoDriver](https://github.com/mozilla/geckodriver/releases)
- Edge: [Edge WebDriver](https://developer.microsoft.com/en-us/microsoft-edge/tools/webdriver/)
- Safari: WebDriver já incluído no macOS.
- Opera: [Opera WebDriver](https://github.com/operasoftware/operachromiumdriver/releases)
Adicione o WebDriver ao PATH do sistema.

### 3. Executar os testes com relatório em diretório
Para executar todos os testes e gerar o relatório na pasta report, utilize:
```bash
robot -d report tests/
```

#### Executar testes por tag
Para executar testes de uma tag específica (por exemplo, smoke):
```bash
robot -d report -i smoke tests/
```

#### Executar todos os testes (sem tag)
```bash
robot -d report tests/
```
O relatório será gerado dentro do diretório report.

---

Qualquer dúvida ou sugestão, fique à vontade para abrir uma issue!
