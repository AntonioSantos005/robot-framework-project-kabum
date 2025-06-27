*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BOTAO_ADICIONAR_SERVICOS}  xpath=//button[.='Adicionar serviços']

*** Keywords ***
Selecionar garantia em meses
    [Arguments]    ${quantidade}
    #mapeando o elemento de forma dinamica para que a quantidade de meses de garantia seja informada no cenario de teste para melhor 
    #reaproveitamento do passo
    Wait Until Element Is Visible    xpath=//span[contains(.,'${quantidade} Meses de garantia')]
    Click Element    xpath=//span[contains(.,'${quantidade} Meses de garantia')]

    #armazenar o valor da quantidade de meses em garantia para validar na tela de carrinho
    Set Global Variable    ${GARANTIA_MESES_PRECARRINHO}    ${quantidade}



