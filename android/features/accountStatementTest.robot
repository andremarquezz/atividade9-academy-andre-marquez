*** Settings ***

Resource     ../utils/config.robot

Test Setup    Abrir App
Test Teardown    Teardown

*** Test Cases ***

CT001 - Deve ser possível visualizar o saldo da conta
  Dado que o usuário está na tela de extrato da conta
  Então o saldo da conta do usuário deve ser exibido corretamente

CT002 - Deve ser possível visualizar o dinheiro guardado
  Dado que o usuário está na tela de extrato da conta
  Então o dinheiro guardado deve ser exibido

CT003 - Deve ser possível visualizar o rendimento total da conta
  Dado que o usuário está na tela de extrato da conta
  Então o rendimento total da conta deve ser exibido

CT004 - Deve ser possível visualizar o histórico da conta
  Dado que o usuário está na tela de extrato da conta
  Quando o usuário acessa a aba de histórico de transações
  Então o histórico de transações da conta do usuário deve ser exibido

CT005 - Deve ser possível visualizar o tipo de cada transação
  Dado que o usuário está na tela de extrato da conta
  Quando o usuário acessa a aba de histórico de transações
  Então o tipo da transação deve ser exibido

CT006 - Deve ser possível visualizar o valor de cada transação
  Dado que o usuário está na tela de extrato da conta
  Quando o usuário acessa a aba de histórico de transações
  Então o valor da transação deve ser exibido

CT007 - Deve ser possível visualizar o método de transação
  Dado que o usuário está na tela de extrato da conta
  Quando o usuário acessa a aba de histórico de transações
  Então o método da transação deve ser exibido

CT008 - Deve ser possível visualizar a data da transação
  Dado que o usuário está na tela de extrato da conta
  Quando o usuário acessa a aba de histórico de transações
  Então a data da transação deve ser exibida

CT009 - Deve ser possível visualizar o usuário envolvido na transação
  Dado que o usuário está na tela de extrato da conta
  Quando o usuário acessa a aba de histórico de transações
  Então o usuário envolvido na transação deve ser exibido
