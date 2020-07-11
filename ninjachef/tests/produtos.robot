***Settings***
Documentation       Cadastro de produtos/pratos
...                 Sendo um cozinhero amador
...                 Quero cadastrar meus melhores pratos
...                 Para que eu possa cozinhar e vender para as pessoas.

Resource             ../resources/base.robot

Suite Setup          Login Session        testealexandre@gmail.com
Suite Teardown       Close Session
Test Teardown        Depois do Teste

***Variables***
### Variavel dicionario
&{Strogonoff}=      img=strogonoff.jpeg       nome=Strogonoff     tipo=Carnes     preco=19.00

***Test Cases***
Novo prato
    Dado que "${Strogonoff}" é um dos meus pratos
    Quando faço o cadastro desse item
    Então devo ver este prato no meu dashboard

