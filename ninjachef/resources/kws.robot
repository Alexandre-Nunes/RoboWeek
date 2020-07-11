***Settings***
Documentation       Aqui teremos todas as palavras chaves de automação de comportamentos.

***Keywords***

###cadastro_usuario
Dado que acesso a página principal
     Go To                                    ${base_url} 
 
Quando submeto o meu e-mail “${email}”
     Input Text                               ${INPUT_EMAIL}              ${email}   
     Click Element                            ${BTN_QUERO_COZINHAR}      
   
Entao devo ser autenticado com sucesso
     Wait Until Page Contains Element         ${DIV_DASHBOARD} 
     Page Should Contain Element              ${DIV_DASHBOARD} 

Entao devo ver a mensagem "${expect_message}"
    Wait Until Element Contains               ${DIV_ALERT}                  ${expect_message} 

###produtos
Dado que "${produto}" é um dos meus pratos
     Set Test Variable        ${produto}

Quando faço o cadastro desse item
     Wait Until Element is Visible            ${BTN_ADD_PRATO}       5  
     Click Element                            ${BTN_ADD_PRATO}

     Choose File                              ${UPLOAD_FILE}                  ${EXECDIR}/resources/images/${produto['img']}

     Input Text                               ${INPUT_NOME}                   ${produto['nome']}
     Input Text                               ${INPUT_TIPO}                   ${produto['tipo']}
     Input Text                               ${INPUT_PRECO}                  ${produto['preco']}
     
     Click Element                            ${BTN_CADASTRAR} 

Então devo ver este prato no meu dashboard
     Wait Until Element Contains              ${CLASS_LISTA}                   ${produto['nome']}





