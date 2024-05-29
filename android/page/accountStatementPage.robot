*** Settings ***

Resource    ../../base.robot

*** Variables ***
${OPEN_ACCOUNT_STATEMENT}      xpath=//android.view.View[contains(@content-desc, "Conta")]
${TEXT_ACCOUNT_BALANCE}        xpath=//android.view.View[@content-desc="Saldo disponível"]
${VALUE_ACCOUNT_BALANCE}       xpath=//android.view.View[@content-desc="R$ 181,79"]
${OPEN_ACCOUNT_STATEMENT}      xpath=//android.view.View[contains(@content-desc, "Conta")]
${MONEY_SAVED}                 xpath=//android.view.View[normalize-space(@content-desc)="Dinheiro guardado R$ 240,02"]
${TOTAL_EARNINGS}              xpath=//android.view.View[normalize-space(@content-desc)="Rendimento total da conta +R$ 0,20 este mês"]
${TRANSFER_USER_ONE}           xpath=//android.view.View[contains(@content-desc, "PATRICIA COSTA")]
${TRANSFER_USER_TWO}           xpath=//android.view.View[normalize-space(@content-desc)="Transferência recebida Ontem ANDRE JEY R$ 30,00 Pix"]
${TRANSFER_USER_THREE}         xpath=//android.view.View[normalize-space(@content-desc)="Transferência recebida Ontem ERIKO BARBOSA R$ 30,00 Pix"]
${TRANSFER_USER_FOUR}          xpath=//android.view.View[normalize-space(@content-desc)="Transferência recebida Ontem IVAN COELHO R$ 30,00 Pix"]


*** Keywords ***
Dado que o usuário está na tela de extrato da conta
    Espera o elemento e faz o clique    ${OPEN_ACCOUNT_STATEMENT}

Quando o usuário acessa a aba de histórico de transações
    Swipe    487    1542    508    797   1000


Então o tipo da transação deve ser exibido
    Verifica se o elemento contém o texto    ${TRANSFER_USER_ONE}    Transferência enviada
Então o valor da transação deve ser exibido
    Verifica se o elemento contém o texto    ${TRANSFER_USER_ONE}    R$ 30,00

Então o método da transação deve ser exibido
    Verifica se o elemento contém o texto    ${TRANSFER_USER_ONE}    Pix
Então a data da transação deve ser exibida
    Verifica se o elemento contém o texto    ${TRANSFER_USER_ONE}    Ontem

Então o usuário envolvido na transação deve ser exibido
   Verifica se o elemento contém o texto    ${TRANSFER_USER_ONE}    PATRICIA COSTA
Então o histórico de transações da conta do usuário deve ser exibido
    Wait Until Element Is Visible       ${TRANSFER_USER_FOUR}
    Element Should Be Visible           ${TRANSFER_USER_FOUR}
    Element Should Be Visible           ${TRANSFER_USER_THREE}
    Element Should Be Visible           ${TRANSFER_USER_TWO}
    Element Should Be Visible           ${TRANSFER_USER_ONE}
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