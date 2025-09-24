*** Settings ***
Documentation    Essa suite testa a página inicial
Resource         ../../resources/tela_principal_resources.robot
Resource    ../../resources/utils_resources.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador


*** Test Cases ***
CT01 - Validar título "O banco com bugs e falhas do seu jeito"
    DADO que estou na página inicial
    QUANDO visualizar o título
    ENTÃO deve conter o texto 'O banco com bugs e falhas do seu jeito'



CT02 - Validar descricão "Faça transferências e pagamentos com bugs e pratique testes com sucesso em um cenário quase real!"
    DADO que estou na página inicial
    QUANDO visualizar a descricão
    ENTÃO deve conter o texto 'Faça transferências e pagamentos com bugs e pratique testes com sucesso em um cenário quase real!'   