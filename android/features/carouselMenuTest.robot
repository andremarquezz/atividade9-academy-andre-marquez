*** Settings ***

Resource     ../utils/config.robot

Test Setup    Abrir App
Test Teardown    Teardown

*** Test Cases ***

CT001 - Deve ser possível navegar para a área de transferência através do menu carrossel da homepage
  Dado que o usuário está na tela inicial do Nubank Clone
  Quando o usuário clica no atalho "Transferir" do menu carrossel
  Então o usuário deve ser direcionado para a tela de transferência

CT004 - Deve ser possível navegar para a área de Pix através do menu carrossel da homepage
  Dado que o usuário está na tela inicial do Nubank Clone
  Quando o usuário clica no atalho "Pix" do menu carrossel
  Então o usuário deve ser direcionado para a tela de Pix

CT002 - Deve ser possível navegar para a área de pagamento através do menu carrossel da homepage
  Dado que o usuário está na tela inicial do Nubank Clone
  Quando o usuário clica no atalho "Pagar" do menu carrossel
  Então o usuário deve ser direcionado para a tela de pagamento

CT003 - Deve ser possível navegar para a área de depósito através do menu carrossel da homepage
  Dado que o usuário está na tela inicial do Nubank Clone
  Quando o usuário clica no atalho "Depositar" do menu carrossel
  Então o usuário deve ser direcionado para a tela de depósito



CT005 - Deve ser possível navegar para a área de empréstimo através do menu carrossel da homepage
  Dado que o usuário está na tela inicial do Nubank Clone
  Quando o usuário clica no atalho "Empréstimo" do menu carrossel
  Então o usuário deve ser direcionado para a tela de empréstimo

CT006 - Deve ser possível navegar para a área de recarga de celular através do menu carrossel da homepage
  Dado que o usuário está na tela inicial do Nubank Clone
  Quando o usuário clica no atalho "Recarga de celular" do menu carrossel
  Então o usuário deve ser direcionado para a tela de recarga de celular

CT007 - Deve ser possível navegar para a área de cobrança através do menu carrossel da homepage
  Dado que o usuário está na tela inicial do Nubank Clone
  Quando o usuário clica no atalho "Cobrança" do menu carrossel
  Então o usuário deve ser direcionado para a tela de cobrança

CT008 - Deve exibir o botão de doação no menu carrossel da homepage
  Dado que o usuário está na tela inicial do Nubank Clone
  Então o botão "Doação" deve ser exibido no menu carrossel

CT009 - Deve exibir o botão de encontrar amigos no menu carrossel da homepage
  Dado que o usuário está na tela inicial do Nubank Clone
  Então o botão "Encontrar amigos" deve ser exibido no menu carrossel
