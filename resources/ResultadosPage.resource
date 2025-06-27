*** Settings ***
Library    SeleniumLibrary
Library    String
Library    BuiltIn

*** Variables ***
# O resultado da busca pode aparecer no h1 ou diretamente na div listingBreadcrumbs
${RESULTADO_BUSCA}    xpath=//div[@id='listingBreadcrumbs']//h1 | //div[@id='listingBreadcrumbs']

# Primeiro item da lista de produtos
${PRIMEIRO_PRODUTO}  xpath=(//a[contains(@class, 'productLink')])[1]

*** Keywords ***
Texto de um dos elementos deve ser
    [Arguments]    ${produto}    ${locator}

    # converte ambos os textos para minusculo
    ${produto_lower}=    Convert To Lowercase    ${produto}
    ${texto}=            Get Text                ${locator}
    ${texto_lower}=      Convert To Lowercase    ${texto}

    # executa a comparacao usando Evaluate de forma segura
    ${match}=    Evaluate    '''${produto_lower}''' in '''${texto_lower}'''
    Run Keyword If    ${match}    Return From Keyword

    # se nao encontrou, falha com mensagem
    Fail    Nenhum dos elementos contem o texto esperado (ignorando maiusculas/minusculas): '${produto}'

