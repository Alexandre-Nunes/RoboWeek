***Settings***
Documentation        Suite de testes do cadastro

Resource             ../resources/base.robot

Test Setup           Open Session
Test Teardown        Close Session

***Test Cases***

Cadastro de usuário
     Dado que acesso a página principal
     Quando submeto o meu e-mail “joao@gmail.com”
     Entao devo ser autenticado com sucesso

Email Incorreto
     Dado que acesso a página principal
     Quando submeto o meu e-mail “joao&yahoo.com”
     Entao devo ver a mensagem "Oops. Informe um email válido!"

Email Não Informado
     Dado que acesso a página principal
     Quando submeto o meu e-mail “${EMPTY}”
     Entao devo ver a mensagem "Oops. Informe um email válido!"

    




    
     
