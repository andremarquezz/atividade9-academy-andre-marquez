*** Settings ***

Resource     ../utils/config.robot

Test Setup    Abrir App
Test Teardown    Teardown

*** Test Cases ***

CT001 - Deve ser exibida a mensagem de boas-vindas
  Dado que o usuário está na tela inicial do Nubank Clone
  Então a mensagem de boas-vindas deve ser exibida

CT002 - Deve ser exibido o saldo da conta
  Dado que o usuário está na tela inicial do Nubank Clone
  Então o saldo da conta deve ser exibido

CT003 - Deve ser exibido o atalho "Meus Cartões"
  Dado que o usuário está na tela inicial do Nubank Clone 
  Então o atalho "Meus Cartões" deve ser exibido

CT004 - Deve ser exibida a aba de cartão de crédito
  Dado que o usuário está na tela inicial do Nubank Clone
  Quando o usuário rola a tela para baixo
  Então o atalho para cartão de crédito deve ser exibido

CT005 - Deve ser exibido o valor da fatura atual do cartão de crédito
  Dado que o usuário está na tela inicial do Nubank Clone
  Quando o usuário rola a tela para baixo
  Então o valor da fatura atual deve ser exibido no atalho do cartão de crédito 

CT006 - Deve ser exibido o valor do crédito disponível
  Dado que o usuário está na tela inicial do Nubank Clone
  Quando o usuário rola a tela para baixo
  Então o valor do crédito disponível deve ser exibido

CT007 - Deve ser possível navegar para a aba de empréstimo
  Dado que o usuário está na tela inicial do Nubank Clone
  Quando o usuário rola a tela para baixo
  Então o atalho de empréstimo deve ser exibido 

CT008 - Deve ser possível navegar para a aba de investimentos
  Dado que o usuário está na tela inicial do Nubank Clone
  Quando o usuário rola a tela para o fim da página
  Então o atalho de investimentos deve ser exibido

CT009 - Deve ser exibido o atalho de seguro de vida
  Dado que o usuário está na tela inicial do Nubank Clone
  Quando o usuário rola a tela para o fim da página
  Então o atalho de seguro de vida deve ser exibido

CT010 - Deve ser exibido o atalho para o WhatsApp
  Dado que o usuário está na tela inicial do Nubank Clone
  Quando o usuário rola a tela para o fim da página
  Então a opção "WhatsApp" deve ser exibida

CT011 - Deve ser possível acessar a opção "Indique Amigos"
  Dado que o usuário está na tela inicial do Nubank Clone
  Quando o usuário rola a tela para o fim da página
  E o usuário arrasta a tela para o lado
  Então a opção "Indique Amigos" deve ser exibida

CT012 - Deve ser possível ocultar o saldo da conta
  Dado que o usuário está na tela inicial do Nubank Clone
  Quando o usuário clica no botão de ocultar saldo
  Então o saldo da conta deve ser ocultado

CT013 - Deve ser possível ocultar o valor da fatura atual do cartão de crédito
  Dado que o usuário está na tela inicial do Nubank Clone
  Quando o usuário clica no botão de ocultar saldo
  Então o valor da fatura atual do cartão de crédito deve ser ocultado

