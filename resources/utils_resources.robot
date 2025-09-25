*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Abrir o navegador
    Open Browser    browser=chrome    
Fechar o navegador
    Capture Page Screenshot
    Close Browser     

