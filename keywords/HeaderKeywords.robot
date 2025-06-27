*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/HeaderPage.resource
Resource   ../resources/ResultadosPage.resource

*** Keywords ***
Dado que o usuario acessa a loja Kabum
    Open Browser    https://www.kabum.com.br    chrome
    Maximize Browser Window
    Lidar com cookies e aviso

E pesquisa por
    [Arguments]    ${produto}
    Wait Until Element Is Visible    ${CAMPO_BUSCAR}
    Digita no campo de busca    ${produto}
    #Valida que esta na tela de resultados pela busca correta, a busca pelo kabum e dinamica e dependendo do que for pesquisado a apresentacao dos resultados eh diferente, 
    # fazendo a validacao a partir do texto buscado, apresentando um elemento ou o outro
    # como a busca pode resultar numa tela diferente do esperado, importante fazer essa validacao nesse momento para garantir que o
    #  primeiro item que sera selecionado esta de acordo com a busca
    Texto de um dos elementos deve ser    ${produto}    ${RESULTADO_BUSCA}

