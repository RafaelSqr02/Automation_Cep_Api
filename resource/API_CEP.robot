*** Settings ***
Documentation    Teste de buscar CEP na API 
Resource         ../base/base.robot 



*** Keywords ***

1 - Cenário de Teste: Envio da Requisição GET com CEP válida
    [Documentation]    Fluxo de Envio de Requisiçã GET com um CEP válido
    ...    
    [Tags]    uat    positive    1
    Sleep    1s

Dado que envie a requisição GET com um CEP válido
    ${response}     GET    ${API_BASE_URL}
    Log    ${response.status_code}
    Log    ${response.json()}

Então espero receber o Status Code 200 de Sucesso
    Status Should Be     200


2 - Cenário de Teste: Envio da Requisição GET com CEP inválido
    [Documentation]    Fluxo de Envio de Requisiçã GET com um CEP inválido
    ...    
    [Tags]    uat    positive    1
    Sleep    9s

Dado que envie a requisição GET com um CEP inválido
    ${response}     GET    ${API_BASE_URL_ERROR}
    Log    ${response.status_code}
    Log    ${response.json()}
    Status Should Be     404

Então espero receber o Status Code 400 de error  
    Status Should Be     404