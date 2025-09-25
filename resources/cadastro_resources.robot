*** Settings ***
Resource    utils_resources.robot
Resource    tela_principal_resources.robot
Library     SeleniumLibrary

*** Variables ***
${BTN_REGISTRAR}    xpath://button[text()='Registrar']
&{PESSOA}    nome=pyladies    email=pyladies@teste.com    senha=12345
${CAMPO_EMAIL}    (//input[@placeholder='Informe seu e-mail'])[2]
${CAMPO_NOME}    //input[@placeholder='Informe seu Nome']
${CAMPO_SENHA}    (//input[@placeholder='Informe sua senha'])[2]
${CAMPO_CONFIRMACAO_SENHA}    //input[@placeholder='Informe a confirmação da senha']
${BTN_CADASTRAR}    //button[normalize-space()='Cadastrar']
${CARD_SUCESSO}    //p[@id='modalText']
${BTN_FECHAR_MODAL}    btnCloseModal     


*** Keywords ***
Clicar no botão "Registrar"
    Wait Until Element Is Visible    ${BTN_REGISTRAR}
    Click Element    ${BTN_REGISTRAR}  
Preencher campo "e-mail"
    Wait Until Element Is Visible    ${CAMPO_EMAIL}
    Input Text    ${CAMPO_EMAIL}    ${PESSOA.email}
Preencher campo "nome"
    Input Text    ${CAMPO_NOME}    ${PESSOA.nome}
Preencher campo "senha"
    Input Text    ${CAMPO_SENHA}    ${PESSOA.senha}
Preencher campo "confirmação de senha"
    Input Text    ${CAMPO_CONFIRMACAO_SENHA}    ${PESSOA.senha}
Clicar no botão "Cadastrar"
    Click Element    ${BTN_CADASTRAR}
Verificar mensagem de sucesso
    Wait Until Element Is Visible    ${CARD_SUCESSO}
    Click Element    ${BTN_FECHAR_MODAL}

 # PASSOS PARA TESTE DO LOGIN
 Cadastrar usuário
     Clicar no botão "Registrar"
     Preencher campo "e-mail"
     Preencher campo "nome"
     Preencher campo "senha"
     Preencher campo "confirmação de senha"
     Clicar no botão "Cadastrar"
     Verificar mensagem de sucesso