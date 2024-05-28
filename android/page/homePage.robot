*** Settings ***

Resource    ../../base.robot
Library    XML

*** Variables ***
${ICON_HOME}                      xpath=//android.widget.ScrollView/android.view.View[1]
${HELLO_USER}                     xpath=//android.view.View[@content-desc="Olá, Breno Freitas"]
${ACCOUNT_BALANCE}                xpath=//android.view.View[normalize-space(@content-desc)="Conta R$ 181,79"]
${CARDS_SHORTCUT}                 xpath=//android.view.View[@content-desc="Meus cartões"]
${CREDIT_CARD_SHORTCUT}           xpath=//android.view.View[contains(@content-desc, "Cartão de Crédito")]
${BTN_LOAN_SHORTCHUT}             xpath=xpath=//android.view.View[contains(@content-desc, "Empréstimo")]
${BTN_INVESTMENTS_SHORTCUT}       xpath=//android.view.View[contains(@content-desc, "Investimentos")]
${BTN_LIFE_INSURANCE_SHORTCUT}    xpath=//android.view.View[contains(@content-desc, "Seguro de vida")]
${BTN_WHATSAPP}                   xpath=//android.view.View[contains(@content-desc, "WhatsApp")]
${BTN_REFER_FRIENDS}              xpath=//android.view.View[contains(@content-desc, "Indique seus amigos")]
${BTN_SHOW_HIDE_BALANCE}          xpath=//android.widget.ScrollView/android.widget.Button[1]

*** Keywords ***

Dado que o usuário está na tela inicial do Nubank Clone
   Wait Until Element Is Visible    ${ICON_HOME}
   Element Should Be Visible    ${ICON_HOME}

Quando o usuário rola a tela para baixo
  Swipe    450    2090    450    1500

Quando o usuário rola a tela para o fim da página
  Swipe    450    2090    450    100

Quando o usuário clica no botão de ocultar saldo
  Click Element    ${BTN_SHOW_HIDE_BALANCE}

E o usuário arrasta a tela para o lado
  Swipe    990    1790   400    1790

Então a mensagem de boas-vindas deve ser exibida
   Element Should Be Visible    ${HELLO_USER}

Então o saldo da conta deve ser exibido
   Element Should Be Visible    ${ACCOUNT_BALANCE}

Então o atalho "Meus Cartões" deve ser exibido
   Element Should Be Visible    ${CARDS_SHORTCUT}

Então o atalho para cartão de crédito deve ser exibido
   Element Should Be Visible    ${CREDIT_CARD_SHORTCUT}

Então o atalho de empréstimo deve ser exibido
   Element Should Be Visible    ${BTN_LOAN}

Então o atalho de investimentos deve ser exibido
   Element Should Be Visible    ${BTN_INVESTMENTS_SHORTCUT}

Então o atalho de seguro de vida deve ser exibido
   Element Should Be Visible    ${BTN_LIFE_INSURANCE_SHORTCUT}

Então a opção "WhatsApp" deve ser exibida
   Element Should Be Visible    ${BTN_WHATSAPP}

Então a opção "Indique Amigos" deve ser exibida
   Element Should Be Visible    ${BTN_REFER_FRIENDS}

Então o saldo da conta deve ser ocultado
   Element Should Be Disabled   ${ACCOUNT_BALANCE}

Então o valor da fatura atual do cartão de crédito deve ser ocultado
    Element Should Be Disabled   ${INVOICE_AMOUNT}
    Element Should Be Disabled   ${AVAILABLE_LIMIT}

Então o valor do crédito disponível deve ser exibido
    Verifica se o elemento contém o texto    ${CREDIT_CARD_SHORTCUT}   Limite disponível R$ 806,78