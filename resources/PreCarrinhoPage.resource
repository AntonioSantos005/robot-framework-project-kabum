*** Settings ***
Library    SeleniumLibrary

*** Variables ***

# mapeando o botao fechar do modal de frete passando cssSelector dinamico que busca a tag "div" que contem no seu atributo "role" o valor "dialog" 
# garantindo que esta verificando o modal e dentro dele encontrando a tag "button" que tem no atributo "aria-label" o valor "Fechar", CSS eh mais performatico do que Xpath

${BOTAO_ADICIONAR_SERVICOS}  xpath=//button[.='Adicionar serviços']

*** Keywords ***
Selecionar garantia em meses
    [Arguments]    ${quantidade}
    #mapeando o elemento de forma dinamica para que a quantidade de meses de garantia seja informada no cenario de teste para melhor 
    #reaproveitamento do passo
    Wait Until Element Is Visible    xpath=//span[contains(.,'${quantidade} Meses de garantia')]
    Click Element    xpath=//span[contains(.,'${quantidade} Meses de garantia')]

    #armazernar o valor da quantidade de meses emm garantinha para validar na tela de carrinho
    Set Global Variable    ${GARANTIA_MESES_PRECARRINHO}    ${quantidade}



