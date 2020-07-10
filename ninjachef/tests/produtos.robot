***Settings***
Documentation       Cadastro de produtos/pratos
...                 Sendo um cozinhero amador
...                 Quero cadastrar meus melhores pratos
...                 Para que eu possa cozinhar e vender para as pessoas.

Resource             ../resources/base.robot

Test Setup           Login Session        alexandre@gmail.com
Test Teardown        Close Session

***Variables***
### Variavel dicionario
&{Strogonoff}=      nome=Strogonoff     tipo=Carnes     preco=19.00

***Test Cases***
Novo pratos
    Dado que "${Strogonoff}" é um dos meus pratos
    Quando faço o cadastro desse item
    Então devo ver este prato no meu dashboard
