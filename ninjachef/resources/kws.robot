***Settings***
Documentation       Aqui teremos todas as palavras chaves de automação de comportamentos.

***Keywords***

###cadastro_usuario

Dado que acesso a página principal
     Go To           http://ninjachef-qaninja-io.umbler.net/
 
Quando submeto o meu e-mail “${email}”
     Input Text                               id:email        ${email}   
     Click Element                            css:button[type=submit]      
   
Entao devo ser autenticado com sucesso
     Wait Until Page Contains Element         class:dashboard 
     Page Should Contain Element              class:dashboard

Entao devo ver a mensagem "${expect_message}"
    Wait Until Element Contains              class:alert               ${expect_message} 

###produtos

Dado que "${produto}" é um dos meus pratos
     Set Test Variable        ${produto}

Quando faço o cadastro desse item
     Wait Until Element is Visible            class:btn-add       5  
     Click Element                            class:btn-add

     Input Text                               id:name                   ${produto['nome']}
     Input Text                               id:plate                  ${produto['tipo']}
     Input Text                               id:price                  ${produto['preco']}
     
     Click Element                            class:btn-cadastrar

Então devo ver este prato no meu dashboard
     Wait Until Element Contains              class:product-list         ${produto['nome']}

###Novo prato Teste
Dado que tenho um novo prato
     Wait Until Element is Visible            class:btn-add       5  
     Click Element                            class:btn-add
     
Quando faço o cadastro desse novo item
     [Arguments]   ${fricasse}      ${frango}      ${15.90}

     Input Text                               id:name                   ${fricasse}
     Input Text                               id:plate                  ${frango} 
     Input Text                               id:price                  ${15.90}
     
     Click Element                            class:btn-cadastrar

Então devo ver este novo prato no meu dashboard
      Wait Until Element Contains              class:product-list        ${fricasse}