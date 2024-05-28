*** Settings ***

Resource    ../../base.robot

*** Variables ***
${OPEN_ACCOUNT_STATEMENT}      xpath=//android.view.View[@content-desc="Conta R$ 181,79"]
${TEXT_ACCOUNT_BALANCE}        xpath=//android.view.View[@content-desc="Saldo disponível"]

*** Keywords ***
Dado que o usuário está na tela de extrato da conta
    Espera o elemento e faz o clique  ${OPEN_ACCOUNT_STATEMENT}

Então o saldo da conta do usuário deve ser exibido corretamente
    Wait Until Page Contains Element    ${TEXT_ACCOUNT_BALANCE}
    Element Should Be Visible           ${TEXT_ACCOUNT_BALANCE}
    Element Should Be Visible           ${OPEN_ACCOUNT_STATEMENT}