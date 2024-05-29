*** Settings ***

Resource    ../utils/base.robot


*** Keywords ***

Espera o elemento e faz o clique
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}
    Click Element                    ${locator}

Verifica se o elemento contém o texto
    [Arguments]    ${locator}    ${text}   
    ${desc}=    Get Element Attribute    ${locator}    content-desc
    Should Contain    ${desc}    ${text}
