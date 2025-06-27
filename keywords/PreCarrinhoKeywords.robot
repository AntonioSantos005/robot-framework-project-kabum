*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/PreCarrinhoPage.resource

*** Keywords ***
E seleciona a garantia estendida com a quantidade de meses
    [Arguments]    ${quantidade}
    Selecionar garantia em meses     ${quantidade}

E vai para o carrinho
    Click Element    ${BOTAO_ADICIONAR_SERVICOS}
