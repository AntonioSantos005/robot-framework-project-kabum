** Settings ***
Library    SeleniumLibrary
Resource   ../resources/PreCarrinhoPage.resource

*** Variables ***

# mapeando o link que possui o nome do produto adicionado ao carrinho por xpath, encontrando a tag "a" que contem no atributo "class" o valor "productName",
#garantido que esse eh o link com o nome do produto
${NOME_DO_PRODUTO_CARRINHO}  xpath=//a[contains(@class, 'productName')]

*** Keywords ***
Validar garantia selecionada
    #passando xpath dinamico com o valor recuperado da PreCarrinhoPage onde armazenou o valor de quantidade de garantia em meses
    # informado no teste para tornar o metodo reutilizavel com outros valores
    ${xpath}=    Set Variable    xpath=//label[.="${GARANTIA_MESES_PRECARRINHO} Meses de Garantia Estendida Kabum"]/input
    #recupera o valor do atributo checked
    ${checked}=    Get Element Attribute    ${xpath}    checked

    #garante que o valor seja true, ou seja, o radio esta marcado
    Should Be Equal As Strings    ${checked}    true




