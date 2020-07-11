***Settings***
Documentation        Suite de testes do cadastro

Resource             ../resources/base.robot

Suite Setup           Open Session
Suite Teardown        Close Session
Test Teardown         Depois do Teste

***Test Cases***

Cadastro de usuário
     Dado que acesso a página principal
     Quando submeto o meu e-mail “alexandreteste@gmail.com”
     Entao devo ser autenticado com sucesso

Email Incorreto
     Dado que acesso a página principal
     Quando submeto o meu e-mail “404&yahoo.com”
     Entao devo ver a mensagem "Oops. Informe um email válido!"

Email Não Informado
     Dado que acesso a página principal
     Quando submeto o meu e-mail “${EMPTY}”
     Entao devo ver a mensagem "Oops. Informe um email válido!"

    




    
     
