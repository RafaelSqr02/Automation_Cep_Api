*** Settings ***
Documentation    Assertions para o GET de buscar CEP na API 
Resource         ../base/base.robot


*** Test Cases ***

1 - Cenário de Teste: Envio da Requisição GET com CEP válida
    Dado que envie a requisição GET com um CEP válido
    Então espero receber o Status Code 200 de Sucesso    

2 - Cenário de Teste: Envio da Requisição GET com CEP inválido
    Dado que envie a requisição GET com um CEP inválido
    Então espero receber o Status Code 400 de error  