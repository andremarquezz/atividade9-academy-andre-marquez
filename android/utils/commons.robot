*** Settings ***

Resource    ../../base.robot

*** Keywords ***

Espera o elemento e faz o clique
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}
    Click Element                    ${locator}

