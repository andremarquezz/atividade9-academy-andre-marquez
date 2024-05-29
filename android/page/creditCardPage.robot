*** Settings ***

Resource    ../../base.robot

*** Variables ***
${CREDIT_CARD_TEXT}           xpath=//android.view.View[contains(@content-desc, "Cartão de Crédito")]
${INVOICE_AMOUNT}             xpath=//android.view.View[@content-desc="R$ 780,72"]
${AVAILABLE_LIMIT}            xpath=//android.view.View[@content-desc="Limite disponível R$ 806,78"]
${BTN_PAY_INVOICE}            xpath=//android.view.View[@content-desc="Pagar fatura"]
${BTN_INVOICE_SUMMARY}        xpath=//android.view.View[@content-desc="Resumo de faturas"]
${BTN_ADJUST_LIMITS}          xpath=//android.view.View[@content-desc="Ajustar limites"]
${BTN_VIRTUAL_CARD}           xpath=//android.view.View[@content-desc="Cartão virtual"]
${BTN_BLOCK_CARD}             xpath=//android.view.View[contains(@content-desc, "Bloquear")]
${BTN_REFER_FRIENDS}          xpath=//android.view.View[normalize-space(@content-desc)="Indicar amigos"]
${TRANSACTION_ONE}            xpath=//android.view.View[normalize-space(@content-desc)="Pagamento recebido Ontem VOCÊ PAGOU R$ 50,00 R$ 30,00 Pix"]
${TRANSACTION_TWO}            xpath=//android.view.View[contains(@content-desc, "Supermercado")]
${TRANSACTION_THREE}          xpath=//android.view.View[normalize-space(@content-desc)="Transferência enviada Ontem BRENO FREITAS R$ 30,00 Pix"]

*** Keywords ***

Dado que o usuário esteja na tela de cartão de crédito
    Swipe     500    1750    500    750   1000
    Click Element    ${CREDIT_CARD_TEXT}

Quando o usuário arrasta o menu carrossel para a esquerda
    Swipe     970    2015    270    2015   1000

Quando o usuario acessa a aba de histórico de transações
    Swipe    500    1740    500    740   1000


Então o valor da fatura atual deve ser exibido
    Wait Until Element Is Visible            ${INVOICE_AMOUNT}
    Element Should Be Visible                ${INVOICE_AMOUNT}

Então o valor do limite disponível deve ser exibido
    Wait Until Element Is Visible            ${AVAILABLE_LIMIT}
    Element Should Be Visible                ${AVAILABLE_LIMIT}

Então o botão "Pagar fatura" deve ser exibido
    Wait Until Element Is Visible            ${BTN_PAY_INVOICE}
    Element Should Be Visible                ${BTN_PAY_INVOICE}

Então o botão "Resumo de faturas" deve ser exibido
    Wait Until Element Is Visible            ${BTN_INVOICE_SUMMARY}
    Element Should Be Visible                ${BTN_INVOICE_SUMMARY}

Então o botão "Ajustar limites" deve ser exibido
    Wait Until Element Is Visible            ${BTN_ADJUST_LIMITS}
    Element Should Be Visible                ${BTN_ADJUST_LIMITS}

Então o botão "Cartão virtual" deve ser exibido
    Wait Until Element Is Visible            ${BTN_VIRTUAL_CARD}
    Element Should Be Visible                ${BTN_VIRTUAL_CARD}

Então o botão "Bloquear Cartão" deve ser exibido
    Wait Until Element Is Visible            ${BTN_BLOCK_CARD}
    Element Should Be Visible                ${BTN_BLOCK_CARD}

Então o botão "Indicar amigos" deve ser exibido
    Wait Until Element Is Visible            ${BTN_REFER_FRIENDS}
    Element Should Be Visible                ${BTN_REFER_FRIENDS}

Então o valor da compra deve ser exibido
    Wait Until Element Is Visible            ${TRANSACTION_TWO}
    Verifica se o elemento contém o texto    ${TRANSACTION_TWO}    R$ 30,00

Então a data da compra deve ser exibida
    Wait Until Element Is Visible            ${TRANSACTION_TWO}
    Verifica se o elemento contém o texto    ${TRANSACTION_TWO}    Ontem

Então o usuário que realizou a compra deve ser exibido
    Wait Until Element Is Visible            ${TRANSACTION_TWO}
    Verifica se o elemento contém o texto    ${TRANSACTION_TWO}    BRENO FREITAS

Então o histórico de compras do cartão de crédito deve ser exibido
    Wait Until Element Is Visible            ${TRANSACTION_ONE}
    Element Should Be Visible                ${TRANSACTION_ONE}
    Wait Until Element Is Visible            ${TRANSACTION_TWO}
    Element Should Be Visible                ${TRANSACTION_TWO}
    Wait Until Element Is Visible            ${TRANSACTION_THREE}
    Element Should Be Visible                ${TRANSACTION_THREE}