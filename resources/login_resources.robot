*** Settings ***
Resource    utils_resources.robot
Resource    tela_principal_resources.robot
Library     SeleniumLibrary

*** Variables ***
${INPUT_EMAIL}    //div[@class='card__login']/form/div/input[@name='email']
${INPUT_SENHA}    //div[@class='card__login']/form/div/div/input[@name='password']  
${BTN_ACESSAR}    //div[@class='login__buttons']/button[@type='submit']  
${URL_HOME}    https://bugbank.netlify.app/home       

*** Keywords ***
Preencher campo "e-mail"
    [Arguments]    ${email}
    Input Text    ${INPUT_EMAIL}    ${email}    
Preencher campo "senha"
    [Arguments]    ${senha}
    Input Text    ${INPUT_SENHA}    ${senha}
Clicar no botão "Acessar"
    Click Element    ${BTN_ACESSAR}
Verificar se estamos na home
    ${url_atual}=    Get Location
    Should Be Equal    ${url_atual}    ${URL_HOME}