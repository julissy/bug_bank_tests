*** Settings ***
Documentation    Essa suite testa a página inicial
Resource         ../../resources/tela_principal_resources.robot
Test Setup       Abrir o navegador
#Test Teardown    Fechar o navegador


*** Test Cases ***
CT01 - Validar título "O banco com bugs e falhas do seu jeito"
    [Documentation]    Este teste verifica o título do site BugBank
    [Tags]             inicial
    Acessar página inicial
    Visualizar o título
    Verificar se conter o texto 'O banco com bugs e falhas do seu jeito'



CT02 - Validar descricão "Faça transferências e pagamentos com bugs e pratique testes com sucesso em um cenário quase real!"
    [Documentation]    Este teste verifica a descrição da tela inicial do site BugBank
    [Tags]             inicial
    Acessar página inicial
    Visualizar a descricão
    Verificar se conter o texto 'Faça transferências e pagamentos com bugs e pratique testes com sucesso em um cenário quase real!'  