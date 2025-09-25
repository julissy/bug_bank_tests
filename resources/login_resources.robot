*** Settings ***
Resource    utils_resources.robot
Resource    tela_principal_resources.robot
Library     SeleniumLibrary

*** Variables ***
${INPUT_EMAIL}    (//input[@placeholder='Informe seu e-mail'])[1]
${INPUT_SENHA}    (//input[@placeholder='Informe sua senha'])[1] 
${BTN_ACESSAR}    (//button[normalize-space()='Acessar'])[1]
${URL_HOME}    https://bugbank.netlify.app/home       

*** Keywords ***
Preencher campo "e-mail" do login
    [Arguments]    ${email}
    Input Text    ${INPUT_EMAIL}    ${email}    
Preencher campo "senha" do login
    [Arguments]    ${senha}
    Input Text    ${INPUT_SENHA}    ${senha}
Clicar no botão "Acessar"
    Click Element    ${BTN_ACESSAR}
Verificar se estamos na home
    Wait Until Location Contains    /home
    ${url_atual}=    Get Location
    Should Be Equal    ${url_atual}    ${URL_HOME}