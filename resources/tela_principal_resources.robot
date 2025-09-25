*** Settings ***
Resource    utils_resources.robot
Library     SeleniumLibrary

*** Variables ***
${URL}    https://bugbank.netlify.app/
${TITULO}    tag:h1   
${DESCRICAO}    tag:p         


*** Keywords ***
Acessar página inicial
    Go To    url=${URL}
Visualizar o título
    Wait Until Element Is Visible    ${TITULO}    10s
Verificar se conter o texto 'O banco com bugs e falhas do seu jeito'
    Element Text Should Be    ${TITULO}    O banco com bugs e falhas do seu jeito

Visualizar a descricão
    Wait Until Element Is Visible    ${DESCRICAO}    10s
Verificar se conter o texto 'Faça transferências e pagamentos com bugs e pratique testes com sucesso em um cenário quase real!'  
    Element Text Should Be    ${DESCRICAO}    Faça transferências e pagamentos com bugs e pratique testes com sucesso em um cenário quase real!   

# GHERKIN STEPS

DADO que estou na página inicial
    Go To    url=${URL}
QUANDO visualizar o título
    Wait Until Element Is Visible    ${TITULO}    10s
ENTÃO deve conter o texto 'O banco com bugs e falhas do seu jeito'
    Element Text Should Be    ${DESCRICAO}    Faça transferências e pagamentos com bugs e pratique testes com sucesso em um cenário quase real!
QUANDO visualizar a descricão
    Visualizar a descricão
ENTÃO deve conter o texto 'Faça transferências e pagamentos com bugs e pratique testes com sucesso em um cenário quase real!'
    Verificar se conter o texto 'Faça transferências e pagamentos com bugs e pratique testes com sucesso em um cenário quase real!'  
    