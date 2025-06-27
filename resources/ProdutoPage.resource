*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${CAMPO_CEP}  id:inputCalcularFrete
${BOTAO_CALCULAR_FRETE}  id:botaoCalcularFrete
${LISTA_OPCOES_FRETE}  id:listaOpcoesFrete

# mapeando o botao fechar do modal de frete passando cssSelector dinamico que busca a tag "div" que contem no seu atributo "role" o valor "dialog" 
# garantindo que esta verificando o modal e dentro dele encontrando a tag "button" que tem no atributo "aria-label" o valor "Fechar", CSS eh mais performatico do que Xpath
${BOTAO_FECHAR_MODAL}  css:div[role='dialog'] button[aria-label='Fechar']

# na tela existem 3 tags button dentro da div com o id "blocoValores", para identificar e mapear elementos por texto, Xpath acaba sendo mais eficaz do que cssSelector
# aqui encontro a tag "div" que possui o atributo "id" = blocoValores e dentro dele encontro a tag "button" que possui o texto "COMPRAR", garantindo que eh o botao comprar do produto
${BOTAO_COMPRAR}  xpath=//div[@id='blocoValores']//button[.='COMPRAR']

*** Keywords ***
Armazenar nome do produto
    Wait Until Element Is Visible    xpath=//h1
    ${nome}=    Get Text    xpath=//h1
    Set Suite Variable    ${NOME_PRODUTO_PRODUTOPAGE}    ${nome}


