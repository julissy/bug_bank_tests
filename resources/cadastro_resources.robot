*** Settings ***
Resource    utils_resources.robot
Resource    tela_principal_resources.robot
Library     SeleniumLibrary

*** Variables ***
${BTN_REGISTRAR}    xpath://button[text()='Registrar']
&{PESSOA}    nome=pyladies    email=pyladies@teste.com    senha=12345
${CAMPO_EMAIL}    //div[@class='card__register']/form/div/input[@name='email']  
${CAMPO_NOME}    //div[@class='card__register']/form/div/input[@name='name']
${CAMPO_SENHA}    //div[@class='card__register']/form/div/div/input[@name='password']
${CAMPO_CONFIRMACAO_SENHA}    //div[@class='card__register']/form/div/div/input[@name='passwordConfirmation']  
${BTN_CADASTRAR}    //div[@class='card__register']/form/button
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