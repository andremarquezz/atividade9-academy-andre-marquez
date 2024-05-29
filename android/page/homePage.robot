*** Settings ***

Resource    ../../base.robot

*** Variables ***
${ICON_HOME}                      xpath=//android.widget.ScrollView/android.view.View[1]
${HELLO_USER}                     xpath=//android.view.View[contains(@content-desc, "Olá")]
${ACCOUNT_BALANCE}                xpath=//android.view.View[contains(@content-desc, "Conta")]
${CARDS_SHORTCUT}                 xpath=//android.view.View[@content-desc="Meus cartões"]
${CREDIT_CARD_SHORTCUT}           xpath=//android.view.View[contains(@content-desc, "Cartão de Crédito")]
${BTN_LOAN_SHORTCHUT}             xpath=//android.view.View[contains(@content-desc, "Empréstimo")]
${BTN_INVESTMENTS_SHORTCUT}       xpath=//android.view.View[contains(@content-desc, "Investimentos")]
${BTN_LIFE_INSURANCE_SHORTCUT}    xpath=//android.view.View[contains(@content-desc, "Seguro de vida")]
${BTN_WHATSAPP}                   xpath=//android.view.View[contains(@content-desc, "WhatsApp")]
${BTN_REFER_FRIENDS}              xpath=//android.view.View[contains(@content-desc, "Indique seus amigos")]
${BTN_SHOW_HIDE_BALANCE}          xpath=//android.widget.ScrollView/android.widget.Button[1]

*** Keywords ***

Dado que o usuário está na tela inicial do Nubank Clone
   Wait Until Element Is Visible             ${ICON_HOME}
   Element Should Be Visible                 ${ICON_HOME}
  
Quando o usuário rola a tela para baixo
  Swipe    450    2090    450    1000

Quando o usuário rola a tela para o fim da página
  Swipe    450    2090    450    50   1500

Quando o usuário clica no botão de ocultar saldo
  Click Element                              ${BTN_SHOW_HIDE_BALANCE}

E o usuário arrasta a tela para o lado
  Wait Until Element Is Visible              ${BTN_WHATSAPP}
  Swipe    900    1800   200    1800

Então a mensagem de boas-vindas deve ser exibida
   Element Should Be Visible                 ${HELLO_USER}
   Verifica se o elemento contém o texto     ${HELLO_USER}    Breno Freitas

Então o saldo da conta deve ser exibido
   Verifica se o elemento contém o texto     ${ACCOUNT_BALANCE}    $ 181,79

Então o atalho "Meus Cartões" deve ser exibido
   Element Should Be Visible                 ${CARDS_SHORTCUT}

Então o atalho para cartão de crédito deve ser exibido
   Element Should Be Visible                 ${CREDIT_CARD_SHORTCUT}

Então o atalho de empréstimo deve ser exibido            
   Element Should Be Visible                 ${BTN_LOAN_SHORTCHUT}
   Verifica se o elemento contém o texto     ${BTN_LOAN_SHORTCHUT}    Empréstimo

Então o atalho de investimentos deve ser exibido
   Element Should Be Visible                 ${BTN_INVESTMENTS_SHORTCUT}
   Verifica se o elemento contém o texto     ${BTN_INVESTMENTS_SHORTCUT}   A revolução roxa começou. Invista de maneira simples, sem burocracia e 100% digital.

Então o atalho de seguro de vida deve ser exibido
   Element Should Be Visible                 ${BTN_LIFE_INSURANCE_SHORTCUT}
   Verifica se o elemento contém o texto     ${BTN_LIFE_INSURANCE_SHORTCUT}    Conheça Nubank Vida: um seguro simples e que cabe no bolso.

Então a opção "WhatsApp" deve ser exibida
   Element Should Be Visible                 ${BTN_WHATSAPP}
   Verifica se o elemento contém o texto     ${BTN_WHATSAPP}    Pagamentos seguros, rápidos e sem tarifa. A experiência Nubank sem nem sair da conversa.

Então a opção "Indique Amigos" deve ser exibida
   Wait Until Element Is Visible             ${BTN_REFER_FRIENDS}
   Verifica se o elemento contém o texto     ${BTN_REFER_FRIENDS}    Indicar amigos

Então o saldo da conta deve ser ocultado
   Element Should Not Contain Text           ${ACCOUNT_BALANCE}    $ 181,79

Então o valor da fatura atual do cartão de crédito deve ser ocultado
    Element Should Not Contain Text          ${CREDIT_CARD_SHORTCUT}    Limite disponível R$ 806,78

Então o valor do crédito disponível deve ser exibido
    Verifica se o elemento contém o texto    ${CREDIT_CARD_SHORTCUT}   Limite disponível R$ 806,78

Então o valor da fatura atual deve ser exibido no atalho do cartão de crédito 
    Verifica se o elemento contém o texto    ${CREDIT_CARD_SHORTCUT}   Fatura atual\nR$ 780,72