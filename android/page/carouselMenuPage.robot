*** Settings ***

Resource    ../../base.robot

*** Variables ***
${TRANSFER_TEXT}                  Qual é o valor da transferência?
${HELLO_USER}                     xpath=//android.view.View[@content-desc="Olá, Breno Freitas"]

${PIX_IMAGE}                      xpath=//android.widget.ImageView[contains(@content-desc, "Minha área Pix")]
${BTN_PIX}                        xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[1]
${BTN_KEYS}                       xpath=//android.view.View[@content-desc="Minhas chaves"]
${BTN_LIMIT_PIX}                  xpath=//android.view.View[@content-desc="Meu limite Pix"]
${BTN_HELP}                       xpath=//android.view.View[@content-desc="Me ajuda"]
${BTN_PAY_PIX_AREA}               xpath=//android.widget.Button[2]
${BTN_TRANSFER_PIX_AREA}          xpath=//android.widget.Button[3]
${BTN_REQUEST_PAYMENT_PIX_AREA}   xpath=//android.widget.Button[4]


${BTN_PAY}                 xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[2]
${BTN_TRANSFER}            xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[3]
${BTN_DEPOSIT}             xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[4]
${BTN_LOAN}                xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[1]
${BTN_RECHARGE}            xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[2]
${BTN_REQUEST_PAYMENT}     xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[3]
${BTN_DONATE}              xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[4]
${BTN_FOUND_FRIENDS}       xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[5]

*** Keywords ***

Dado que o usuário está na tela inicial do Nubank Clone
   Wait Until Element Is Visible    ${HELLO_USER}

Quando o usuário clica no atalho "Pix" do menu carrossel
    Click Element    ${BTN_PIX}
Quando o usuário clica no atalho "Transferir" do menu carrossel
    Click Element    ${BTN_TRANSFER}

Então o usuário deve ser direcionado para a tela de transferência
    Wait Until Page Contains    ${TRANSFER_TEXT}
Então o usuário deve ser direcionado para a tela de Pix
    Wait Until Element Is Visible    ${PIX_IMAGE}
    Element Should Be Visible        ${BTN_KEYS}
    Element Should Be Visible        ${BTN_LIMIT_PIX}
    Element Should Be Visible        ${BTN_HELP}
    Element Should Be Visible        ${BTN_PAY_PIX_AREA}
    Element Should Be Visible        ${BTN_TRANSFER_PIX_AREA}
    Element Should Be Visible        ${BTN_REQUEST_PAYMENT_PIX_AREA}


