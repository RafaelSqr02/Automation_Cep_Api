*** Settings ***

Documentation    Importa os arquivos estruturais do projeto

#LIBRARYS#
Library    Collections
Library    JSONLibrary    
Library    RequestsLibrary   
Library    SeleniumLibrary   

#RESOURCES#
Resource         ../variables/variables.robot   
Resource         ../resource/API_CEP.robot
Resource         ../tests/cenarios_teste.robot