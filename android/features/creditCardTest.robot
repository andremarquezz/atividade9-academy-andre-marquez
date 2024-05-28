*** Settings ***

Resource     ../utils/config.robot

Test Setup    Abrir App
Test Teardown    Teardown

*** Test Cases ***

CT001 - Deve ser possível visualizar o valor da fatura atual
  Dado que o usuário esteja na tela de cartão de crédito
  Então o valor da fatura atual deve ser exibido

CT002 - Deve ser possível visualizar o valor do limite disponível
  Dado que o usuário esteja na tela de cartão de crédito
  Então o valor do limite disponível deve ser exibido

CT003 - Deve ser possível visualizar o histórico de transações do cartão de crédito
  Dado que o usuário esteja na tela de cartão de crédito
  Então o histórico de transações do cartão de crédito deve ser exibido

CT004 - Deve ser exibido o botão de pagamento da fatura
  Dado que o usuário esteja na tela de cartão de crédito
  Então o botão "Pagar fatura" deve ser exibido

CT005 - Deve ser exibido o botão de resumo de faturas
  Dado que o usuário esteja na tela de cartão de crédito
  Então o botão "Resumo de faturas" deve ser exibido

CT006 - Deve ser exibido o botão de ajuste de limites
  Dado que o usuário esteja na tela de cartão de crédito
  Então o botão "Ajustar limites" deve ser exibido

CT007 - Deve ser exibido o botão de cartão virtual
  Dado que o usuário esteja na tela de cartão de crédito
  Então o botão "Cartão virtual" deve ser exibido

CT008 - Deve ser exibido o botão de bloquear cartão
  Dado que o usuário esteja na tela de cartão de crédito
  Quando o usuário arrasta o menu carrossel para a esquerda 
  Então o botão "Bloquear Cartão" deve ser exibido

CT009 - Deve ser exibido o botão de indicar amigos
  Dado que o usuário esteja na tela de cartão de crédito
  Quando o usuário arrasta o menu carrossel para a esquerda 
  Então o botão "Indicar amigos" deve ser exibido

CT010 - Deve ser possível visualizar detalhes de uma transação no histórico
  Dado que o usuário esteja na tela de cartão de crédito
  Quando o usuário acessa a aba de histórico de transações
  Então os detalhes da transação devem ser exibidos

CT011 - Deve ser possível visualizar o valor de cada transação
  Dado que o usuário esteja na tela de cartão de crédito
  Quando o usuário acessa a aba de histórico de transações
  Então o valor da transação deve ser exibido

CT012 - Deve ser possível visualizar a data da transação
  Dado que o usuário esteja na tela de cartão de crédito
  Quando o usuário acessa a aba de histórico de transações
  Então a data da transação deve ser exibida

CT013 - Deve ser possível visualizar o usuário envolvido na transação
  Dado que o usuário esteja na tela de cartão de crédito
  Quando o usuário acessa a aba de histórico de transações
  Então o usuário envolvido na transação deve ser exibido