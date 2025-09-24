*** Settings ***
Documentation    Essa suite testa o cadastro
Resource         ../../resources/cadastro_resources.robot
Resource         ../../resources/tela_principal_resources.robot
Test Setup       Abrir o navegador
#Test Teardown    Fechar o navegador


*** Test Cases ***
CT01 - Registrar usuário
    [Documentation]    Esse teste verifica a criação de usuario 
    ...                com saldo na conta
    [Tags]             saldo
    Acessar página inicial
    Clicar no botão "Registrar"
    Preencher campo "e-mail"
    Preencher campo "nome"
    Preencher campo "senha"
    Preencher campo "confirmação de senha"
    Clicar no botão "Cadastrar"
    Verificar mensagem de sucesso
