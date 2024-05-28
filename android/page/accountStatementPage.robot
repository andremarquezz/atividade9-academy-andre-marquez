*** Settings ***

Resource    ../../base.robot

*** Variables ***
${OPEN_ACCOUNT_STATEMENT}      xpath=//android.view.View[contains(@content-desc, "Conta")]
${TEXT_ACCOUNT_BALANCE}        xpath=//android.view.View[@content-desc="Saldo disponível"]
${VALUE_ACCOUNT_BALANCE}       xpath=//android.view.View[@content-desc="R$ 181,79"]
${OPEN_ACCOUNT_STATEMENT}      xpath=//android.view.View[contains(@content-desc, "Conta")]
${MONEY_SAVED}                 xpath=//android.view.View[normalize-space(@content-desc)="Dinheiro guardado R$ 240,02"]
${TOTAL_EARNINGS}              xpath=//android.view.View[normalize-space(@content-desc)="Rendimento total da conta +R$ 0,20 este mês"]


*** Keywords ***
Dado que o usuário está na tela de extrato da conta
    Espera o elemento e faz o clique    ${OPEN_ACCOUNT_STATEMENT}

Então o saldo da conta do usuário deve ser exibido corretamente
    Wait Until Page Contains Element    ${TEXT_ACCOUNT_BALANCE}
    Element Should Be Visible           ${TEXT_ACCOUNT_BALANCE}
    Element Should Be Visible           ${VALUE_ACCOUNT_BALANCE}

Então o dinheiro guardado deve ser exibido
    Wait Until Element Is Visible       ${MONEY_SAVED}
    Element Should Be Visible           ${MONEY_SAVED}

Então o rendimento total da conta deve ser exibido
    Wait Until Element Is Visible       ${TOTAL_EARNINGS}
    Element Should Be Visible           ${TOTAL_EARNINGS}