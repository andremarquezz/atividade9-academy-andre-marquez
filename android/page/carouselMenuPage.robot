*** Settings ***

Resource    ../../base.robot


*** Variables ***

#PIX AREA
${PIX_IMAGE}                      xpath=//android.widget.ImageView[contains(@content-desc, "Minha área Pix")]
${BTN_KEYS}                       xpath=//android.view.View[@content-desc="Minhas chaves"]
${BTN_LIMIT_PIX}                  xpath=//android.view.View[@content-desc="Meu limite Pix"]
${BTN_HELP}                       xpath=//android.view.View[@content-desc="Me ajuda"]
${BTN_PAY_PIX_AREA}               xpath=//android.widget.Button[2]
${BTN_TRANSFER_PIX_AREA}          xpath=//android.widget.Button[3]
${BTN_REQUEST_PAYMENT_PIX_AREA}   xpath=//android.widget.Button[4]


#TRANFER AREA
${INPUT_TRANSFER_AREA}            xpath=//android.widget.EditText[@text="R$ 0,00"]
${TRANSFER_TEXT}                  Qual é o valor da transferência?


#PAYMENT AREA
${BTN_PIX_PAYMENT_AREA}           xpath= //android.view.View[contains(@content-desc, "Pagar com Pix")]
${BTN_BARCODE_PAYMENT_AREA}       xpath= //android.view.View[contains(@content-desc, "Pagar um boleto")]
${BTN_CREDIT_CARD_PAYMENT_AREA}   xpath= //android.view.View[contains(@content-desc, "Pagar fatura do cartão")]

#DEPOSIT AREA
${HOME_DEPOSIT_AREA}                 xpath=//android.view.View[@content-desc="Como você quer depositar na sua conta do Nubank"] 
${BTN_PIX_DEPOSIT_AREA}              xpath= //android.view.View[contains(@content-desc, "Pix")]
${BTN_BARCODE_DEPOSIT_AREA}          xpath= //android.view.View[contains(@content-desc, "Boleto")]
${BTN_TEDDOC_DEPOSIT_AREA}           xpath= //android.view.View[contains(@content-desc, "TED/DOC")]
${BTN_BRING_SALARY_DEPOSIT_AREA}     xpath= //android.view.View[contains(@content-desc, "Trazer seu salário")]
${TEXT_PIX_DEPOSIT_AREA}             Sem custo e cai na hora, mesmo de madrugada e fim de semana.
${TEXT_BARCODE_DEPOSIT_AREA}         Sem custo e pode levar 3 dias úteis para o dinheiro cair.
${TEXT_TEDDOC_DEPOSIT_AREA}          Pode ter custo e cai somente em horário comercial de dias úteis.
${TEXT_BRING_SALARY_DEPOSIT_AREA}    Receba todo mês direto aqui na sua conta, sem custo.

#LOAN AREA
${LOAN_TEXT}                      xpath=//android.view.View[@content-desc="O valor disponível no momento é de R$ 10.000,00"]
${BTN_NEW_LOAN}                   xpath=//android.widget.Button[@content-desc="NOVO EMPRÉSTIMO"]

#RECHARGE AREA
${INPUT_PHONE_NUMBER}             xpath=//android.widget.EditText
${EXPECT_PHONE_NUMBER}            xpath=//android.widget.EditText[@text="(24) 99920-9945"]
${TEXT_RECHARGE_AREA}             Qual número você quer recarregar?

#REQUEST PAYMENT AREA
${INPUT_VALUE_REQUEST_PAYMENT}    xpath=//android.widget.EditText
${EXPECT_VALUE_REQUEST_PAYMENT}   xpath=//android.widget.EditText[@text="R$ 0,50"]
${TEXT_PAYMENT_AREA}              Qual valor você quer receber?

#MENU CARROSSEL
${BTN_PIX}                         xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[1]
${BTN_PAY}                         xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[2]
${BTN_TRANSFER}                    xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[3]
${BTN_DEPOSIT}                     xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[4]
${BTN_LOAN}                        xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[1]
${BTN_RECHARGE}                    xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[2]
${BTN_REQUEST_PAYMENT}             xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[3]
${BTN_DONATE}                      xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[4]
${BTN_FIND_FRIENDS}                xpath=//android.widget.ScrollView/android.widget.HorizontalScrollView[1]/android.widget.Button[5]


*** Keywords ***

Quando o usuário clica no atalho "Pix" do menu carrossel
    Click Element    ${BTN_PIX}
Quando o usuário clica no atalho "Transferir" do menu carrossel
    Click Element    ${BTN_TRANSFER}

Quando o usuário clica no atalho "Pagar" do menu carrossel
    Click Element    ${BTN_PAY}

Quando o usuário clica no atalho "Depositar" do menu carrossel
    Click Element    ${BTN_DEPOSIT}

Quando o usuario arrasta o menu carrossel para a esquerda
    Swipe    900    900    70    900    1400

E clica no atalho "Empréstimo" do menu carrossel
    Click Element    ${BTN_LOAN}

E clica no atalho "Recarga de celular" do menu carrossel
    Click Element    ${BTN_RECHARGE}

E clica no atalho "Cobrança" do menu carrossel
    Click Element    ${BTN_REQUEST_PAYMENT}

Então o usuário deve ser direcionado para a tela de cobrança
    Wait Until Element Is Visible    ${INPUT_VALUE_REQUEST_PAYMENT}
    Element Should Be Visible        ${INPUT_VALUE_REQUEST_PAYMENT}
    Page Should Contain Text         ${TEXT_PAYMENT_AREA}
    Input Text                       ${INPUT_VALUE_REQUEST_PAYMENT}    50    
    Element Should Be Visible        ${EXPECT_VALUE_REQUEST_PAYMENT}

Então o usuário deve ser direcionado para a tela de transferência
    Wait Until Element Is Visible   ${INPUT_TRANSFER_AREA}
    Page Should Contain Text        ${TRANSFER_TEXT}
    
Então o botão "Doação" deve ser exibido no menu carrossel
    Element Should Be Visible    ${BTN_DONATE}

Então o botão "Encontrar amigos" deve ser exibido no menu carrossel
    Element Should Be Visible    ${BTN_FIND_FRIENDS}

Então o usuário deve ser direcionado para a tela de Pix
    Wait Until Element Is Visible            ${PIX_IMAGE}
    Verifica se o elemento contém o texto    ${PIX_IMAGE}            Tudo o que você precisa para pagar, transferir ou cobrar.
    Element Should Be Visible                ${BTN_KEYS}
    Element Should Be Visible                ${BTN_LIMIT_PIX}
    Element Should Be Visible                ${BTN_HELP}
    Element Should Be Visible                ${BTN_PAY_PIX_AREA}
    Element Should Be Visible                ${BTN_TRANSFER_PIX_AREA}
    Element Should Be Visible                ${BTN_REQUEST_PAYMENT_PIX_AREA}

Então o usuário deve ser direcionado para a tela de pagamento
    Wait Until Element Is Visible            ${BTN_PIX_PAYMENT_AREA}
    Verifica se o elemento contém o texto    ${BTN_PIX_PAYMENT_AREA}            Leia um QR Code ou cole o código.
    Verifica se o elemento contém o texto    ${BTN_BARCODE_PAYMENT_AREA}        Contas de luz, água, etc.
    Verifica se o elemento contém o texto    ${BTN_CREDIT_CARD_PAYMENT_AREA}    Libera o limite do seu Cartão de Crédito.

Então o usuário deve ser direcionado para a tela de depósito        
    Wait Until Element Is Visible            ${HOME_DEPOSIT_AREA}
    Element Should Be Visible                ${HOME_DEPOSIT_AREA}
    Element Should Be Visible                ${BTN_PIX_DEPOSIT_AREA}
    Verifica se o elemento contém o texto    ${BTN_PIX_DEPOSIT_AREA}            ${TEXT_PIX_DEPOSIT_AREA}
    Element Should Be Visible                ${BTN_BARCODE_DEPOSIT_AREA}
    Verifica se o elemento contém o texto    ${BTN_BARCODE_DEPOSIT_AREA}        ${TEXT_BARCODE_DEPOSIT_AREA}
    Element Should Be Visible                ${BTN_TEDDOC_DEPOSIT_AREA}
    Verifica se o elemento contém o texto    ${BTN_TEDDOC_DEPOSIT_AREA}         ${TEXT_TEDDOC_DEPOSIT_AREA}
    Element Should Be Visible                ${BTN_BRING_SALARY_DEPOSIT_AREA}
    Verifica se o elemento contém o texto    ${BTN_BRING_SALARY_DEPOSIT_AREA}   ${TEXT_BRING_SALARY_DEPOSIT_AREA}

Então o usuário deve ser direcionado para a tela de empréstimo
    Wait Until Element Is Visible    ${LOAN_TEXT}
    Element Should Be Visible        ${LOAN_TEXT}
    Element Should Be Visible        ${BTN_NEW_LOAN}

Então o usuário deve ser direcionado para a tela de recarga de celular
    Wait Until Element Is Visible        ${INPUT_PHONE_NUMBER}
    Page Should Contain Text             ${TEXT_RECHARGE_AREA} 
    Element Should Be Visible            ${INPUT_PHONE_NUMBER}
    Input Text                           ${INPUT_PHONE_NUMBER}    24999209945
    Element Should Be Visible            ${EXPECT_PHONE_NUMBER}

