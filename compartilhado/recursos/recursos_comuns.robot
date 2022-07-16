Documentation 
...Suíte com recursos comuns de sistema
...Recursos usados em todos os cenários

*** Settings ***
Library    SeleniumLibrary
Library    String
Library    FakerLibrary       locale=pt_BR

*** Variables ***
${BROWSER}      chrome

*** Keywords ***

Abrir navegador
    Open Browser        about:blank   ${BROWSER}
    Set Selenium Speed	0.5 seconds
    Maximize Browser Window

Fechar navegador
    Capture Page Screenshot
    Delete All Cookies
    Close window

Click and Scroll Item
    [Arguments]                      ${identifier}
    Wait Until Element Is Visible    ${identifier}                                  30
    ${position}                      Get Horizontal Position                          ${identifier}
    Execute Javascript               window.scrollTo(0, window.scrollY + ${position})
    Click Element                    ${identifier}                                  

Scroll Item
    [Arguments]                      ${identifier}
    Wait Until Element Is Visible    ${identifier}                     30
    ${position}                      Get Vertical Position             ${identifier}
    Execute Javascript               window.scrollTo(${position},0)    
    