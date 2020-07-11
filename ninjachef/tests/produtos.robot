***Settings***
Documentation       Cadastro de produtos/pratos
...                 Sendo um cozinhero amador
...                 Quero cadastrar meus melhores pratos
...                 Para que eu possa cozinhar e vender para as pessoas.

Resource             ../resources/base.robot

Suite Setup          Login Session        chefalexandre@gmail.com
Suite Teardown       Close Session
Test Teardown        Depois do Teste

***Variables***
### Variavel dicionario
&{Strogonoff}=      img=strogonoff.jpeg       nome=Strogonoff     tipo=Carne      preco=19.00
&{Fricasse}=        img=fricasse.jpeg         nome=Fricasse       tipo=Frango     preco=18.00
&{Lasanha}=         img=lasanha.jpeg          nome=Lasanha        tipo=Massas     preco=20.00
&{Churrasco}=       img=churrasco.jpeg        nome=Churrasco      tipo=Carnes     preco=50.00

***Test Cases***
Novo prato de Strogonoff
    Dado que "${Strogonoff}" é um dos meus pratos
    Quando faço o cadastro desse item
    Então devo ver este prato no meu dashboard

Novo prato de Fricasse
    Dado que "${Fricasse}" é um dos meus pratos
    Quando faço o cadastro desse item
    Então devo ver este prato no meu dashboard

Novo prato de Lasanha
    Dado que "${Lasanha}" é um dos meus pratos
    Quando faço o cadastro desse item
    Então devo ver este prato no meu dashboard

Novo prato de Churrasco
    Dado que "${Churrasco}" é um dos meus pratos
    Quando faço o cadastro desse item
    Então devo ver este prato no meu dashboard

