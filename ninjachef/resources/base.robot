***Settings***
Documentation       Aqui teremos a estrutura base do projeto.

Library         SeleniumLibrary  

Resource        elements.robot
Resource        kws.robot
Resource        helpers.robot

***Variables***
${base_url}          http://ninjachef-qaninja-io.umbler.net/

***Keywords***
     
### Hooks / Ganchos
Open Session
     Open Browser                       about:blank      chrome
     Set Selenium Implicit Wait         5

Close Session
     Close Browser

Depois do Teste
     Capture Page Screenshot