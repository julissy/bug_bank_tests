*** Settings ***
Documentation    Essa suite testa o login
Resource         ../../resources/tela_principal_resources.robot
Resource        ../../resources/login_resources.robot
Resource        ../../resources/cadastro_resources.robot
Test Setup       Abrir o navegador
Test Teardown    Fechar o navegador


*** Test Cases ***
CT01 - Validar usuário logado
    [Documentation]    Esse teste verifica o login
    [Tags]             login
    Acessar página inicial
    Cadastrar usuário
    Preencher campo "e-mail" do login    pyladies@teste.com
    Preencher campo "senha" do login    12345
    Clicar no botão "Acessar"
    Verificar se estamos na home